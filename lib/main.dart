import 'package:fcai_platform/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FCAIPlatform());
}

class FCAIPlatform extends StatelessWidget {
  const FCAIPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
