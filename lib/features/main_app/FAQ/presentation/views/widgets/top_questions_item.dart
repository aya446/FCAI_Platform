import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/FAQ/data/models/top_questions.dart';
import 'package:flutter/material.dart';

class TopQuestionsItem extends StatelessWidget {
  const TopQuestionsItem({super.key, required this.topQuestionsModel});

  final TopQuestionsModel topQuestionsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .95,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        topQuestionsModel.question,
                        style: Styles.Blue14,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.maximize, color: AppColors.primaryColor),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              if (topQuestionsModel.description != null)
                Text(
                  topQuestionsModel.description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.gray13,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
