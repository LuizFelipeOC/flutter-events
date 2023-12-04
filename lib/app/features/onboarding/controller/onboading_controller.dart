import 'package:flutter/material.dart';

import '../../../core/constants/app_onboarding_items.dart';
import '../models/onboarding_model.dart';

class OnboardingController extends ValueNotifier<int> {
  PageController pageController = PageController(initialPage: 0);

  OnboardingController() : super(0);

  List<OnboardingModel> get list => _transformListItem();

  List<OnboardingModel> _transformListItem() {
    return AppOnboardingItems.listItems.map((e) => OnboardingModel.fromMap(e)).toList();
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void changePage({required int index}) {
    value = index;
  }
}
