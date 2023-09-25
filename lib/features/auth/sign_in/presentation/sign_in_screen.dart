import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/features/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:stylish/features/auth/sign_in/presentation/widgets/bottom_widget.dart';
import 'package:stylish/features/auth/sign_in/presentation/widgets/sign_in_form_widget.dart';

import '../../../../core/resources/color_manager.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: Column(
                children: [
                  SignInFormWidget(),
                  BottomWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
