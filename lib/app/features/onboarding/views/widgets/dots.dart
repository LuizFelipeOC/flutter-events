import 'package:flutter/material.dart';

import '../../controller/onboading_controller.dart';

class DotsOnboarding extends StatelessWidget {
  final int index;
  final OnboardingController controller;

  const DotsOnboarding({
    Key? key,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, value, __) => AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: value == index ? 30 : 20,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: value == index ? Colors.blue : Colors.blue.withOpacity(0.3),
        ),
      ),
    );
  }
}
