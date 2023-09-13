import 'package:flutter/material.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/my_icons_icons.dart';
import '../../../../../core/resources/string_manager.dart';
import '../../../widgets/auth_text_form_field_widget.dart';
import '../../cubit/sign_up_cubit.dart';

class SignUpFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final SignUpCubit cubit;

  const SignUpFormWidget({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManager.createAnAccounts,
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
            height: 31,
          ),
          AuthTextFormFieldWidget(
            icon: MyIcons.lock_filled,
            label: StringManager.confirmPassword,
            onChange: (value) {
              cubit.onChangeConfirmPassword(value);
            },
            isPassword: true,
            isObscure: true,
            validation: (value) {
              if (value!.isEmpty) {
                return '${StringManager.confirmPassword} is required';
              } else if (cubit.password != cubit.confirmPassword) {
                return '${StringManager.confirmPassword} not match ${StringManager.password}';
              } else {
                return null;
              }
            },
            controller: confirmPasswordController,
          ),
          SizedBox(
            height: 15.0,
          ),
          RichText(
            text: TextSpan(
                text: 'By clicking the',
                style: TextStyle(
                  color: ColorManager.grey3,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: ' Register ',
                    style: TextStyle(
                      color: ColorManager.darkOrange,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'button, you agree to the public offer',
                    style: TextStyle(
                      color: ColorManager.grey3,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
