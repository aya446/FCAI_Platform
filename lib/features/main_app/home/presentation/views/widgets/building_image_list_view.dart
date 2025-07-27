import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/building_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildingOmageListview extends StatefulWidget {
  const BuildingOmageListview({super.key});

  @override
  State<BuildingOmageListview> createState() => _BuildingOmageListviewState();
}

class _BuildingOmageListviewState extends State<BuildingOmageListview> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      'assets/images/building1.png',
      'assets/images/building5.jpg',
      'assets/images/building6.jpg',
      'assets/images/building4.png',
      'assets/images/building2.png',
      'assets/images/building3.png',
      'assets/images/building4.png',
    ];
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: _controller,
            itemCount: imagesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BuildingImage(image: imagesList[index]);
            },
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _controller,
          count: imagesList.length,
          effect: WormEffect(
            dotHeight: 6,
            dotWidth: 6,
            activeDotColor: AppColors.primaryColor,
            dotColor: Colors.grey.shade400,
            spacing: 8,
          ),
        ),
      ],
    );
  }
}
