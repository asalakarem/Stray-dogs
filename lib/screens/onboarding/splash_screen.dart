import 'package:flutter/material.dart';
import 'onboarding_screen.dart 2';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      }
    });

    return const Scaffold(
      backgroundColor: Color(0xFFF7F3ED),
      body: Center(
        child: Image(
          image: AssetImage('images/7403c9b951479de3db0fb0f4a9e621c6.png'),
          width: 160,
        ),
      ),
    );
  }
}
