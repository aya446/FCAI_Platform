import 'package:fcai_platform/core/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FCAIPlatform());
}

class FCAIPlatform extends StatelessWidget {
  const FCAIPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
