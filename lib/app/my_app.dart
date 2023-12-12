import 'package:flutter/material.dart';

import 'core/themes/ligth_theme.dart';
import 'features/splash/view/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.theme,
      title: 'Flutter Events',
      home: const SplashPage(),
    );
  }
}
