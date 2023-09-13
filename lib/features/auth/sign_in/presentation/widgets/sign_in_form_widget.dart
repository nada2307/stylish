import 'package:flutter/material.dart';
import 'package:stylish/features/auth/sign_in/cubit/sign_in_cubit.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/my_icons_icons.dart';
import '../../../../../core/resources/string_manager.dart';
import '../../../widgets/auth_text_form_field_widget.dart';

class SignInFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final SignInCubit cubit;

  const SignInFormWidget({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringManager.welcomeBack,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            AuthTextFormFieldWidget(
              icon: Icons.person_2_rounded,
              label: StringManager.usernameOrEmail,
              onChange: (value) {
                cubit.onChangeEmail(value);
              },
              controller: emailController,
            ),
            SizedBox(
              height: 31,
            ),
            AuthTextFormFieldWidget(
              icon: MyIcons.lock_filled,
              label: StringManager.password,
              onChange: (value) {
                cubit.onChangePassword(value);
              },
              isPassword: true,
              isObscure: true,
              controller: passwordController,
            ),
            SizedBox(
              height: 9.0,
            ),
            Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    StringManager.forgotPassword,
                    style: TextStyle(
                      color: ColorManager.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
