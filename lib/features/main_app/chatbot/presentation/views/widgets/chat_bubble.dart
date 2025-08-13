import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 300),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.secondColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Text(message, style: Styles.Blue14),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: message));
                  },
                  child: Icon(Icons.copy, color: AppColors.grey, size: 16),
                ),
                SizedBox(width: 7),
                Icon(Icons.edit, color: AppColors.grey, size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//AIzaSyAqhVNQE9qXVclkvHmqAnswM0vlHoqTHCw