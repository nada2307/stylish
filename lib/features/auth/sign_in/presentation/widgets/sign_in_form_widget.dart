import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/widgets/components.dart';
import 'package:stylish/features/auth/forget_password/presentation/forgot_password_screen.dart';
import 'package:stylish/features/auth/sign_in/cubit/sign_in_cubit.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/my_icons_icons.dart';
import '../../../../../core/resources/string_manager.dart';
import '../../../../../core/widgets/default_button_widget.dart';
import '../../../../get_started/presentation/start_screen.dart';
import '../../../widgets/auth_text_form_field_widget.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({
    super.key,
  });

  @override
  State<SignInFormWidget> createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          navigateTo(context, StartScreen());
        }
      },
      builder: (context, state) {
        var cubit = SignInCubit.get(context);
        return Form(
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
                    onPressed: () {
                      navigateTo(
                        context,
                        ForgotPasswordScreen(),
                      );
                    },
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
              SizedBox(
                height: 25,
              ),
              DefaultButton(
                function: () {
                  if (formKey.currentState!.validate()) {
                    cubit.signInFunction();
                  }
                },
                text: StringManager.login,
              ),
            ],
          ),
        );
      },
    );
  }
}
