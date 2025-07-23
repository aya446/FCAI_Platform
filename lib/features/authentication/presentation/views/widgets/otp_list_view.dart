import 'package:flutter/material.dart';
import 'otp_input_item.dart';

class OtpListView extends StatelessWidget {
  const OtpListView({
    super.key,
    required this.controllers,
    required this.focusNodes,
  });
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controllers.length,
        itemBuilder: (context, index) {
          return OtpInputItem(
            controller: controllers[index],
            focusNode: focusNodes[index],
            nextFocusNode: index < controllers.length - 1
                ? focusNodes[index + 1]
                : null,
          );
        },
      ),
    );
  }
}
