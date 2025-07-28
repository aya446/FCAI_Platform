import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/FAQ/presentation/views/widgets/questions_list_view.dart';
import 'package:fcai_platform/features/main_app/FAQ/presentation/views/widgets/top_question_list_view.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/search_bar.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class FAQBody extends StatelessWidget {
  const FAQBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 12),
              Text('How can we help you?', style: Styles.BlueBold20),
              SizedBox(height: 15),
              SearchBarwidget(),
              SizedBox(height: 15),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * .13,
                    child: QuestionsListView(),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TitleBar(title: 'Top questions', actionTitle: 'View all'),
                      SizedBox(height: 20),
                      TopQuestionListView(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
