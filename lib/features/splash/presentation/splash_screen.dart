import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/core/resources/asset_manager.dart';

import '../../on_boarding/presentation/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    navigateToHome(context);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: FadeTransition(
          opacity: animation,
          child: Center(
            child: SvgPicture.asset(
              AssetManager.logo,
              height: 100,
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}

void navigateToHome(context) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    },
  );
}
