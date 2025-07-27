import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.onMenuTap});
  final VoidCallback onMenuTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onMenuTap,
                icon: Icon(Icons.menu, size: 30, color: AppColors.primaryColor),
              ),
              Image.asset('assets/images/blue_logo.png'),
            ],
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/notification');
            },
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
