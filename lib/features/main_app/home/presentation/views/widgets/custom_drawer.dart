import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/studentt.png'),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ali Mohammed', style: Styles.white18),
                      SizedBox(height: 4),
                      Text(
                        'Computer Science',
                        style: Styles.white11.copyWith(
                          color: Colors.white.withAlpha(150),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: Colors.white.withAlpha(50)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DrawerItem(title: 'Registration'),
                      DrawerItem(title: 'Grades'),
                      DrawerItem(title: 'Courses'),
                      DrawerItem(title: 'Tasks'),
                      DrawerItem(title: 'Professors'),
                      DrawerItem(title: 'Roadmaps'),
                      DrawerItem(title: 'Support'),
                    ],
                  ),
                ],
              ),

              Spacer(),
              Divider(color: Colors.white.withAlpha(50)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Logout', style: Styles.white16),
                  SvgPicture.asset('assets/icons/logout.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;

  const DrawerItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(children: [Text(title, style: Styles.white14)]),
      ),
    );
  }
}
