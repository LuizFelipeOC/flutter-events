import 'package:flutter/material.dart';

import 'features/splash/view/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Events',
      home: SplashPage(),
    );
  }
}
