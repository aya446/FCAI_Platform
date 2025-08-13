import 'package:fcai_platform/features/main_app/chatbot/data/models/chat_model.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatUpdated extends ChatState {
  final List<ChatModel> messages;
  final bool isTyping;

  ChatUpdated({required this.messages, this.isTyping = false});
}
