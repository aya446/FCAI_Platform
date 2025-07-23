import 'package:fcai_platform/core/utils/app_routes.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/login_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 35,
              right: 35,
              top: size.height * .35,
              bottom: size.height * .13,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [LoginListView()],
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: size.width * 0.25,
          right: size.width * 0.25,
          child: Column(
            children: [
              CustomButton(
                title: 'Login',
                onTap: () {
                  context.go(AppRoutes.mainApp);
                },
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?', style: Styles.white11),
                  GestureDetector(
                    onTap: () {
                      context.go(AppRoutes.register);
                    },
                    child: Text('  Register', style: Styles.whiteBold13),
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
