import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/models/chat_model.dart';

class ChatResponse extends StatelessWidget {
  const ChatResponse({super.key, required this.message});
  final ChatModel message;

  @override
  Widget build(BuildContext context) {
    bool isError = message.isError;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: Colors.black.withAlpha(40)),
          SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: Text(
              message.message,
              style: isError
                  ? Styles.Blue14.copyWith(fontWeight: FontWeight.bold)
                  : Styles.Blue14,
            ),
          ),
          SizedBox(height: 20),
          if (!isError)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: message.message));
                  },
                  child: Icon(Icons.copy, color: AppColors.grey, size: 16),
                ),
                SizedBox(width: 2),
                SvgPicture.asset(
                  'assets/icons/like.svg',
                  color: AppColors.grey,
                ),
                SizedBox(width: 2),
                SvgPicture.asset(
                  'assets/icons/dislike.svg',
                  color: AppColors.grey,
                ),
                SizedBox(width: 2),
                SvgPicture.asset(
                  'assets/icons/share.svg',
                  color: AppColors.grey,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
