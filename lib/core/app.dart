import 'package:flutter/material.dart';
import 'package:stylish/core/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish App',
      theme: getAppTheme(),
    );
  }
}
