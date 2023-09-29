import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/app_cubit/app_cubit.dart';
import 'package:stylish/core/resources/theme_manager.dart';
import 'package:stylish/features/on_boarding/presentation/on_boarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(),
        home: OnBoardingScreen(),
      ),
    );
  }
}
