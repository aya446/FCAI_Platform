import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/logic/chat_cubit.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/logic/chat_state.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/models/chat_model.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/chat_response.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/chat_bubble.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/chat_welcome.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/custom_text_field.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/suggestions.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/typing_inidcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBotBody extends StatefulWidget {
  const ChatBotBody({super.key});

  @override
  State<ChatBotBody> createState() => _ChatBotBodyState();
}

class _ChatBotBodyState extends State<ChatBotBody> {
  final TextEditingController controller = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Chat Bot', style: Styles.BlueBold18),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: AppColors.primaryColor, size: 27),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                final List<ChatModel> messages = state is ChatUpdated
                    ? state.messages
                    : [];

                if (messages.isEmpty) {
                  return const ChatWelcomeWidget();
                }

                final bool isTyping = state is ChatUpdated && state.isTyping;

                return ListView.builder(
                  reverse: true,
                  controller: scrollController,
                  itemCount: messages.length + (isTyping ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (isTyping && index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TypingIndicatorWidget(),
                        ),
                      );
                    }

                    final msgIndex = isTyping ? index - 1 : index;
                    final ChatModel msg = messages[msgIndex];

                    final bool isLastMessage = msgIndex == 0;
                    final int totalMessages = messages.length;

                    final bool showSuggestions =
                        isLastMessage &&
                        totalMessages >= 8 &&
                        totalMessages % 8 == 0;

                    return Column(
                      children: [
                        msg.sender == 'user'
                            ? ChatBubble(message: msg.message)
                            : ChatResponse(message: msg),

                        if (showSuggestions)
                          Align(
                            alignment: Alignment.center,
                            child: Suggestions(),
                          ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: CustomChatInputField(
              controller: controller,
              onSend: () {
                context.read<ChatCubit>().sendMessage(controller.text);
                controller.clear();
              },
              onSubmitted: (_) {
                context.read<ChatCubit>().sendMessage(controller.text);
                controller.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}
