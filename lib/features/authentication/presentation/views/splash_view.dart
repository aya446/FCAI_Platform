import 'package:fcai_platform/core/animation/splash_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:fcai_platform/core/utils/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late SplashAnimationController _splashController;

  @override
  void initState() {
    super.initState();
    _splashController = SplashAnimationController(vsync: this);
    _splashController.startAnimations(context);
  }

  @override
  void dispose() {
    _splashController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: FadeTransition(
        opacity: _splashController.fadeOutAnimation,
        child: Center(
          child: AnimatedBuilder(
            animation: _splashController.logoController,
            builder: (context, child) {
              return Transform.scale(
                scale: _splashController.scaleAnimation.value,
                child: Image.asset(
                  'assets/images/white_logo_png.png',
                  width: 130,
                  height: 130,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
