import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:fcai_platform/core/utils/app_colors.dart';

class CustomChatInputField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;
  final Function(String) onSubmitted;

  const CustomChatInputField({
    super.key,
    required this.controller,
    required this.onSend,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      cursorColor: AppColors.primaryColor,
      style: Styles.Blue14,
      decoration: InputDecoration(
        hintText: 'Type a message',
        suffixIcon: SizedBox(
          width: 70,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.mic_none_sharp, size: 24, color: AppColors.grey),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: onSend,
                  child: Icon(
                    Icons.send,
                    size: 24,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
