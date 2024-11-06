import 'package:flutter/material.dart';
import 'widgets/body_splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySplash(),
    );
  }
}
