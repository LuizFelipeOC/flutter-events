import 'package:flutter/material.dart';

import '../controller/onboading_controller.dart';
import 'widgets/dots.dart';
import 'widgets/onboarding_button.dart';
import 'widgets/onboarding_pageview.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                child: const Text(
                  'SKIP ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.lightBlue,
                  ),
                ),
                onPressed: () => {},
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: OnboardingPageView(controller: controller),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: List.generate(
                  controller.list.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: DotsOnboarding(
                      controller: controller,
                      index: index,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: OnboardingButton(controller: controller),
    );
  }
}
