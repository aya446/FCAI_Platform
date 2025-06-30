import 'package:fcai_platform/core/animation/splash_animation.dart';
import 'package:flutter/material.dart';
import '../../../features/authentication/presentation/views/select_department.dart';

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
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SelectDepartment()),
        );
      }
    });
  }

  void dispose() {
    logoController.dispose();
    fadeController.dispose();
  }
}
