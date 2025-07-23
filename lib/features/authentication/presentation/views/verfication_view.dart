import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/verfication_body.dart';
import 'package:flutter/material.dart';

class VerficationView extends StatelessWidget {
  const VerficationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: VerficationBody(),
      ),
    );
  }
}
