import 'package:fcai_platform/core/animation/select_department_animation.dart';
import 'package:flutter/material.dart';

class SelectDepartmentAnimationController {
  final TickerProvider vsync;
  late AnimationController fadeInController;
  late Animation<double> fadeInAnimation;

  SelectDepartmentAnimationController({required this.vsync}) {
    fadeInController = SelectDepartmentAnimations.fadeInController(
      vsync: vsync,
    );
    fadeInAnimation = SelectDepartmentAnimations.fadeInAnimation(
      fadeInController,
    );
  }

  void startAnimation() {
    fadeInController.forward();
  }

  void dispose() {
    fadeInController.dispose();
  }
}
