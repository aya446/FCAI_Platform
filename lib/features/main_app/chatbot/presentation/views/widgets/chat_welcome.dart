import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ChatWelcomeWidget extends StatelessWidget {
  const ChatWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Chatbot.png', height: 150),
            const SizedBox(height: 20),
            Text(
              " Hello name !",
              textAlign: TextAlign.center,
              style: Styles.BlueBold18,
            ),
            const Text(
              " I\'m Ready To help you ",
              textAlign: TextAlign.center,
              style: Styles.BlueBold18,
            ),
            SizedBox(height: 15),
            const Text(
              "Ask me anything that's on your mind, I’m here to assist you ",
              textAlign: TextAlign.center,
              style: Styles.gray15,
            ),
          ],
        ),
      ),
    );
  }
}
