import 'package:fcai_platform/features/main_app/home/data/models/news_model.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/news_item.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<NewsModel> newsList = [
      NewsModel(
        image: 'assets/images/problem_solving.png',
        text: 'The results of problem solving competition have been announced',
      ),
      NewsModel(
        image: 'assets/images/huawei.png',
        text: 'Huawei has offered an AI scholarship for outstanding students.',
      ),
      NewsModel(
        image: 'assets/images/studentt.png',
        text:
            'Student Ahmed Magdy has been appointed as a teaching assistant in the Artificial Intelligence Department.',
      ),
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: NewsItem(newsModel: newsList[index]),
        );
      },
      itemCount: newsList.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
