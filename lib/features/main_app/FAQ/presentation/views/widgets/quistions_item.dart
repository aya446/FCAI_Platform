import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/FAQ/data/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuestionsItem extends StatelessWidget {
  const QuestionsItem({super.key, required this.questionModel});

  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * .35,
        height: 200,
        decoration: BoxDecoration(
          color: questionModel.color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                questionModel.icon,
                color: questionModel.iconColor,
              ),
              SizedBox(height: 5),
              Text(
                'Question about',
                style: Styles.whiteBold13.copyWith(
                  color: Colors.white.withAlpha(120),
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .04,
                child: Text(
                  questionModel.question,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.white14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
