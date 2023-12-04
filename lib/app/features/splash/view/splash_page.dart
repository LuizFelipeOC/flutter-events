import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../onboarding/views/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    simulateDelay();
    super.initState();
  }

  void simulateDelay() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const OnboardingPage(),
            transitionDuration: const Duration(milliseconds: 550),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Image.asset(
            AppImages.dashStars,
            width: MediaQuery.of(context).size.width * .8,
          ),
        ),
      ),
    );
  }
}
