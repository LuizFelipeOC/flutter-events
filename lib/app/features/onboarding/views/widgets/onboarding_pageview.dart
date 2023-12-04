import 'package:flutter/material.dart';

import '../../controller/onboading_controller.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.controller,
  });

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (index) => controller.changePage(index: index),
      controller: controller.pageController,
      itemCount: controller.list.length,
      itemBuilder: (ctx, index) {
        final item = controller.list[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item.pathImage,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                item.textImage.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
