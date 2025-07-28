import 'package:fcai_platform/features/main_app/FAQ/data/models/top_questions.dart';
import 'package:fcai_platform/features/main_app/FAQ/presentation/views/widgets/top_questions_item.dart';
import 'package:flutter/material.dart';

class TopQuestionListView extends StatelessWidget {
  const TopQuestionListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<TopQuestionsModel> topQuestionsList = [
      TopQuestionsModel(
        question: 'What are the documents required for graduation?',
        description:
            'Completed Graduation Application Form - Official Transcripts - Degree Audit Report - No Dues Certificate',
      ),
      TopQuestionsModel(
        question: 'What are the documents required for graduation?',
      ),
      TopQuestionsModel(question: 'Who do I contact for technical issues?'),
      TopQuestionsModel(
        question: 'What are the documents required for graduation?',
        description:
            'Completed Graduation Application Form - Official Transcripts - Degree Audit Report - No Dues Certificate',
      ),
      TopQuestionsModel(
        question: 'What are the documents required for graduation?',
        description:
            'Completed Graduation Application Form - Official Transcripts - Degree Audit Report - No Dues Certificate',
      ),
      TopQuestionsModel(
        question: 'What are the documents required for graduation?',
        description:
            'Completed Graduation Application Form - Official Transcripts - Degree Audit Report - No Dues Certificate',
      ),
      TopQuestionsModel(
        question: 'What are the documents required for graduation?',
        description:
            'Completed Graduation Application Form - Official Transcripts - Degree Audit Report - No Dues Certificate',
      ),
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        return TopQuestionsItem(topQuestionsModel: topQuestionsList[index]);
      },
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: topQuestionsList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
