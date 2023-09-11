import 'package:flutter/material.dart';
import 'package:stylish/core/resources/theme_manager.dart';
import 'package:stylish/features/splash/presentation/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stylish App',
      theme: getAppTheme(),
      home: SplashScreen(),
    );
  }
}
