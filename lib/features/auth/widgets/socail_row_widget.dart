import 'package:flutter/material.dart';

import '../../../core/resources/asset_manager.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/my_icons_icons.dart';

class SocialRowWidget extends StatelessWidget {
  const SocialRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: ColorManager.primaryLight2,
                border: Border.all(color: ColorManager.primary),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Image.asset(
              AssetManager.google,
              height: 24,
              width: 24,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: ColorManager.primaryLight2,
                border: Border.all(color: ColorManager.primary),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Icon(MyIcons.apple)
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: ColorManager.primaryLight2,
                border: Border.all(color: ColorManager.primary),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Icon(
              MyIcons.facebook,
              color: ColorManager.facebook,
            )
          ],
        ),
      ],
    );
  }
}
