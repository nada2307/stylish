import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/widgets/default_button_widget.dart';
import '../../sign_up/presentation/widgets/bottom_widget.dart';
import '../cubit/sign_up_cubit.dart';
import 'widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = SignUpCubit.get(context);
          return Scaffold(
            backgroundColor: ColorManager.white,
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: Column(
                    children: [
                      SignUpFormWidget(
                        formKey: formKey,
                        emailController: emailController,
                        passwordController: passwordController,
                        confirmPasswordController: confirmPasswordController,
                        cubit: cubit,
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
