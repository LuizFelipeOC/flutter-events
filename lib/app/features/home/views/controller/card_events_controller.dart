import 'package:flutter/material.dart';

class CardEventsController extends ValueNotifier<bool> {
  CardEventsController() : super(false);

  Future<void> animationEntrance() async {
    await Future.delayed(const Duration(milliseconds: 800), () {
      value = true;
    });
  }
}
