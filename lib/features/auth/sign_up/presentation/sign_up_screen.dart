import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/color_manager.dart';

import '../../sign_up/presentation/widgets/bottom_widget.dart';
import '../cubit/sign_up_cubit.dart';
import 'widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: Column(
                children: [
                  SignUpFormWidget(),
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
