import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/building_image_list_view.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/classes_boarding.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/home_app_bar.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/news_list_view.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/search_bar.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.onMenuTap});
  final VoidCallback onMenuTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: HomeAppBar(onMenuTap: onMenuTap),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SearchBarwidget(),
                        SizedBox(height: 30),
                        BuildingOmageListview(),
                        SizedBox(height: 30),
                        TitleBar(
                          title: 'Today\'s Classes',
                          actionTitle: 'Open schedule',
                        ),
                        SizedBox(height: 10),
                        ClassesBoarding(
                          courseName: 'Digital Thinking',
                          courseTime: '10:30',
                          courseLocation: 'Study hall 1',
                          DoctorName: 'Mai Ahmed',
                        ),
                        SizedBox(height: 30),
                        TitleBar(title: 'Latest News'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * .27,
                      child: const NewsListView(),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
