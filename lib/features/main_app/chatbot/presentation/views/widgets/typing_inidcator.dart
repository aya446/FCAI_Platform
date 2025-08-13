import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TypingIndicatorWidget extends StatelessWidget {
  const TypingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 20,
          child: Lottie.asset('assets/animation/Typing_Indicator.json'),
        ),
      ),
    );
  }
}
