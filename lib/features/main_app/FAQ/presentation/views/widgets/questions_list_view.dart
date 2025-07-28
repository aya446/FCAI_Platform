import 'package:fcai_platform/features/main_app/FAQ/data/models/question_model.dart';
import 'package:fcai_platform/features/main_app/FAQ/presentation/views/widgets/quistions_item.dart';
import 'package:flutter/material.dart';

class QuestionsListView extends StatelessWidget {
  const QuestionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<Color>> colorPairs = [
      [Color(0xff608A9B), Color(0xff2B6578)],
      [Color(0xffB0D8B5), Color(0xff14AE5C)],
      [Color(0xffECDADD), Color(0xffF68E8E)],
    ];
    List<QuestionModel> questionList = [
      QuestionModel(
        icon: 'assets/icons/notification-2-line.svg',
        question: 'Scholarships & Financial Aid',
        color: colorPairs[0][0],
        iconColor: colorPairs[0][1],
      ),
      QuestionModel(
        icon: 'assets/icons/Group.svg',
        question: 'Technical & Support',
        color: colorPairs[1][0],
        iconColor: colorPairs[1][1],
      ),
      QuestionModel(
        icon: 'assets/icons/doller_sign.svg',
        question: 'Career Guidance',
        color: colorPairs[2][0],
        iconColor: colorPairs[2][1],
      ),
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        return QuestionsItem(questionModel: questionList[index]);
      },
      itemCount: questionList.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
