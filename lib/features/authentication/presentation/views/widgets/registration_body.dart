import 'package:fcai_platform/core/utils/app_routes.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/registration_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationBody extends StatelessWidget {
  const RegistrationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        // ✅ محتوى الشاشة القابل للتمرير
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 35,
              right: 35,
              top: size.height * .25,
              bottom: size.height * .15, // عشان نسيب مساحة للزرار
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [RegistrationListView()],
            ),
          ),
        ),

        // ✅ الزرار الثابت تحت
        Positioned(
          bottom: 100,
          left: size.width * 0.25,
          right: size.width * 0.25,
          child: Column(
            children: [
              CustomButton(
                title: 'Register',
                onTap: () {
                  context.go(AppRoutes.verificationCode);
                },
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?', style: Styles.white11),
                  GestureDetector(
                    onTap: () {
                      context.go(AppRoutes.login);
                    },
                    child: Text('  Login', style: Styles.whiteBold13),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
