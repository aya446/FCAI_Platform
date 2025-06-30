import 'package:fcai_platform/core/animation/select_dapartment_animation_controller.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/select_department_body.dart';
import 'package:flutter/material.dart';
import 'package:fcai_platform/core/utils/app_colors.dart';

class SelectDepartment extends StatefulWidget {
  const SelectDepartment({super.key});

  @override
  State<SelectDepartment> createState() => _SelectDepartmentState();
}

class _SelectDepartmentState extends State<SelectDepartment>
    with TickerProviderStateMixin {
  late SelectDepartmentAnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = SelectDepartmentAnimationController(vsync: this);
    _animationController.startAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: FadeTransition(
        opacity: _animationController.fadeInAnimation,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SelectDepartmentBody(),
        ),
      ),
    );
  }
}
