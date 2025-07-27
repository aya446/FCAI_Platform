import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ClassesBoarding extends StatelessWidget {
  const ClassesBoarding({
    super.key,
    required this.courseName,
    required this.courseTime,
    required this.courseLocation,
    required this.DoctorName,
  });

  final String courseName;
  final String courseTime;
  final String courseLocation;
  final String DoctorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: AppColors.secondColor,
        border: Border.all(color: const Color.fromARGB(255, 186, 185, 185)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(courseName, style: Styles.Blue14),
            Row(
              children: [
                Icon(Icons.alarm, color: AppColors.grey, size: 17),
                SizedBox(width: 3),
                Text(courseTime, style: Styles.gray13),
                SizedBox(width: 25),
                Icon(Icons.location_on, color: AppColors.grey, size: 17),
                SizedBox(width: 3),
                Text(courseLocation, style: Styles.gray13),
              ],
            ),
            Text(DoctorName, style: Styles.gray15),
          ],
        ),
      ),
    );
  }
}
