import 'package:flutter/material.dart';

import '../../controller/onboading_controller.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.controller,
  });

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, value, __) {
        return FloatingActionButton.extended(
          onPressed: value == controller.list.length - 1 ? () => {} : controller.nextPage,
          backgroundColor: Colors.blue,
          label: value == controller.list.length - 1
              ? Text(
                  'Começar agora'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                ),
        );
      },
    );
  }
}
