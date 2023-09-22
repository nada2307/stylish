import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/string_manager.dart';
import 'package:stylish/core/widgets/components.dart';
import 'package:stylish/core/widgets/default_button_widget.dart';
import 'package:stylish/features/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:stylish/features/auth/sign_in/presentation/widgets/bottom_widget.dart';
import 'package:stylish/features/auth/sign_in/presentation/widgets/sign_in_form_widget.dart';
import 'package:stylish/features/get_started/presentation/start_screen.dart';

import '../../../../core/resources/color_manager.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) {
          if (state is SignInSuccessState) {
            navigateToh(context, StartScreen());
          }
        },
        builder: (context, state) {
          var cubit = SignInCubit.get(context);
          return Scaffold(
            backgroundColor: ColorManager.white,
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: Column(
                    children: [
                      SignInFormWidget(
                        formKey: formKey,
                        emailController: emailController,
                        passwordController: passwordController,
                        cubit: cubit,
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
                      BottomWidget(),
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
