import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/my_icons_icons.dart';
import '../../../../../core/resources/string_manager.dart';
import '../../../../../core/widgets/default_button_widget.dart';
import '../../../widgets/auth_text_form_field_widget.dart';
import '../../cubit/sign_up_cubit.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = SignUpCubit.get(context);
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
              SizedBox(
                height: 20,
              ),
              DefaultButton(
                function: () {
                  if (formKey.currentState!.validate()) {
                    cubit.signUpFunction();
                  }
                },
                text: StringManager.createAccount,
              ),
            ],
          ),
        );
      },
    );
  }
}
