import 'package:flutter/material.dart';

class SplashAnimations {
  static AnimationController logoController({required TickerProvider vsync}) {
    return AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 5),
    );
  }

  static Animation<double> scaleAnimation(AnimationController controller) {
    return TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(
          begin: 0.5,
          end: 1.6,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 40,
      ),
      TweenSequenceItem(tween: ConstantTween(1.6), weight: 60),
    ]).animate(controller);
  }

  static AnimationController fadeOutController({
    required TickerProvider vsync,
  }) {
    return AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 800),
    );
  }

  static Animation<double> fadeOutAnimation(AnimationController controller) {
    return Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
  }
}
