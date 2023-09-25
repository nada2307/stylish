import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/color_manager.dart';
import 'package:stylish/features/auth/forget_password/cubit/forgot_password_cubit.dart';
import 'package:stylish/features/auth/forget_password/presentation/widgets/forgot_password_form_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(29.0),
            child: ForgotPasswordFormWidget(),
          ),
        ),
      ),
    );
  }
}
