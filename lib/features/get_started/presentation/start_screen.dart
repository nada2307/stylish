import 'package:flutter/material.dart';
import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/widgets/components.dart';
import 'package:stylish/core/widgets/default_button_widget.dart';
import 'package:stylish/features/home/presentation/home_screen.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/string_manager.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset(
              AssetManager.start,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.42,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorManager.white.withOpacity(0.001),
                    ColorManager.black.withOpacity(0.63),
                    ColorManager.black.withOpacity(0.63),
                    ColorManager.black.withOpacity(0.63),
                    ColorManager.black.withOpacity(0.63),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 34.0,
                  right: 37,
                  left: 37,
                  top: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringManager.getStartedText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      StringManager.getStartedText1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    DefaultButton(
                        function: () {
                          navigateAndFinish(context, HomeScreen());
                        },
                        text: StringManager.getStarted),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
