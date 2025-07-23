import 'package:flutter/material.dart';

class SelectDepartmentAnimations {
  static AnimationController fadeInController({required TickerProvider vsync}) {
    return AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );
  }

  static Animation<double> fadeInAnimation(AnimationController controller) {
    return Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
  }
}
