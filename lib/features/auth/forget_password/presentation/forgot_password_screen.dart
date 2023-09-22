import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/color_manager.dart';
import 'package:stylish/core/widgets/default_button_widget.dart';
import 'package:stylish/features/auth/forget_password/cubit/forgot_password_cubit.dart';

import '../../../../core/resources/string_manager.dart';
import '../../widgets/auth_text_form_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = ForgotPasswordCubit.get(context);
          return Scaffold(
            backgroundColor: ColorManager.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(29.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringManager.forgotPassword1,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AuthTextFormFieldWidget(
                        icon: Icons.email_rounded,
                        label: StringManager.enterYourEmailAddress,
                        onChange: (value) {
                          cubit.onChangeEmail(value);
                        },
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '* ',
                          style: TextStyle(
                            color: ColorManager.darkOrange,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: StringManager.forgetText,
                              style: TextStyle(
                                color: ColorManager.grey3,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      DefaultButton(
                        function: () {
                          if (formKey.currentState!.validate()) {
                            cubit.submitFunction();
                          }
                        },
                        text: StringManager.submit,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
