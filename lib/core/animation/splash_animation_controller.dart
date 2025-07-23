import 'package:fcai_platform/core/animation/splash_animation.dart';
import 'package:fcai_platform/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashAnimationController {
  final TickerProvider vsync;
  late AnimationController logoController;
  late AnimationController fadeController;

  late Animation<double> scaleAnimation;
  late Animation<double> fadeOutAnimation;

  SplashAnimationController({required this.vsync}) {
    logoController = SplashAnimations.logoController(vsync: vsync);
    scaleAnimation = SplashAnimations.scaleAnimation(logoController);

    fadeController = SplashAnimations.fadeOutController(vsync: vsync);
    fadeOutAnimation = SplashAnimations.fadeOutAnimation(fadeController);
  }

  void startAnimations(BuildContext context) {
    logoController.forward();

    logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        fadeController.forward();
      }
    });

    fadeController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        context.go(AppRoutes.selectDepartment);
      }
    });
  }

  void dispose() {
    logoController.dispose();
    fadeController.dispose();
  }
}
