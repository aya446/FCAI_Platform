import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/widgets/suggestion_item.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.15,
      decoration: BoxDecoration(
        color: AppColors.secondColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text('Suggestions', style: Styles.Blue14),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SuggestionItem(
                  text: 'Time Management',
                  icon: Icons.alarm,
                  color: const Color(0xFF982921),
                ),
                SuggestionItem(
                  text: 'Academic tips & resources',
                  icon: Icons.lightbulb,
                  color: const Color.fromARGB(255, 248, 248, 136),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SuggestionItem(
                  text: 'Academic path selection',
                  icon: Icons.map_outlined,
                  color: const Color.fromARGB(255, 107, 224, 129),
                ),
                SuggestionItem(
                  text: 'Schedule conflict',
                  icon: Icons.article_rounded,
                  color: AppColors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
