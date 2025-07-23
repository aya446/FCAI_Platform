import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/app_routes.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/otp_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerficationBody extends StatefulWidget {
  const VerficationBody({super.key});

  @override
  State<VerficationBody> createState() => _VerficationBodyState();
}

class _VerficationBodyState extends State<VerficationBody> {
  final List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onVerify() {
    String code = controllers.map((c) => c.text).join();
    debugPrint('OTP Code: $code');

    if (code.length == 6) {
      // هنا ممكن تتحقق من الكود لو فيه API
      context.go(AppRoutes.mainApp);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: AppColors.secondColor,
          content: Text(
            'Please enter the full verification code',
            style: Styles.Blue14,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * .07,
              right: size.width * .07,
              top: size.height * .3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter code', style: Styles.white20),
                const SizedBox(height: 7),
                Text(
                  'We’ve sent an SMS with an activation code to your email.',
                  style: Styles.white16,
                ),
                const SizedBox(height: 30),
                OtpListView(controllers: controllers, focusNodes: focusNodes),
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 100,
          left: size.width * 0.25,
          right: size.width * 0.25,
          child: CustomButton(title: 'Verify', onTap: _onVerify),
        ),
      ],
    );
  }
}
