import 'package:flutter/material.dart';
import 'package:stylish/core/widgets/components.dart';
import 'package:stylish/features/auth/sign_up/presentation/sign_up_screen.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/string_manager.dart';
import '../../../widgets/socail_row_widget.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          StringManager.oRContinueWith,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: ColorManager.grey3,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SocialRowWidget(),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringManager.createAnAccount,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: ColorManager.grey3,
              ),
            ),
            InkWell(
                onTap: () {
                  navigateTo(context, SignUpScreen());
                },
                child: Text(
                  StringManager.signUp,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: ColorManager.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
