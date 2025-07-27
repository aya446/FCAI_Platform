import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/home/data/models/news_model.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .3,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xffF0F3F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                newsModel.image,
                height: MediaQuery.sizeOf(context).height * .15,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Text(
                newsModel.text,
                maxLines: 5,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Styles.Blue12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
