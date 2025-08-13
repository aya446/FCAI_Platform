import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/models/chat_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat_state.dart';
import '../services/chat_service.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this.chatService) : super(ChatInitial());

  final ChatService chatService;
  final List<ChatModel> messages = [];
  bool isTyping = false;

  void sendMessage(String userMessage) async {
    // Add user message
    messages.insert(0, ChatModel(sender: 'user', message: userMessage));
    isTyping = true;
    emit(ChatUpdated(messages: List.from(messages), isTyping: isTyping));

    try {
      final botReply = await chatService.getBotReply(userMessage);

      if (botReply.toString().trim().isEmpty) {
        throw Exception('empty_response');
      }

      // Determine if suggestions should be shown
      final shouldShowSuggestions =
          messages.length >= 8 && messages.length % 8 == 0;

      messages.insert(
        0,
        ChatModel(
          sender: 'bot',
          message: botReply,
          showSuggestions: shouldShowSuggestions,
        ),
      );

      isTyping = false;
      emit(ChatUpdated(messages: List.from(messages), isTyping: isTyping));
    } on DioException catch (e) {
      _handleDioError(e);
    } on SocketException {
      _addErrorMessage('No internet connection.');
    } catch (e) {
      if (e.toString().contains('empty_response')) {
        _addErrorMessage('No response from the model at the moment.');
      } else {
        _addErrorMessage('An unexpected error occurred. Please try again.');
      }
    }
  }

  void _handleDioError(DioException e) {
    String errorMessage;

    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      errorMessage = 'Network connection is slow or timed out.';
    } else if (e.type == DioExceptionType.connectionError) {
      errorMessage = 'Unable to connect to the internet.';
    } else if (e.response != null) {
      final statusCode = e.response?.statusCode;
      if (statusCode == 500) {
        errorMessage = 'Server error occurred. Please try again later.';
      } else if (statusCode == 404) {
        errorMessage = 'Model or service not found.';
      } else {
        errorMessage = 'Server error (Code: $statusCode)';
      }
    } else {
      errorMessage = 'An unexpected error occurred.';
    }

    _addErrorMessage(errorMessage);
  }

  void _addErrorMessage(String errorMessage) {
    messages.insert(
      0,
      ChatModel(sender: 'bot', message: errorMessage, isError: true),
    );
    isTyping = false;
    emit(ChatUpdated(messages: List.from(messages), isTyping: isTyping));
  }
}
