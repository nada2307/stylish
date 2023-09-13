import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  static SignInCubit get(context) => BlocProvider.of(context);

  String email = '';
  String password = '';
  void onChangeEmail(String text) {
    email = text;
    print(email);
    emit(ChangeEmailState());
  }

  void onChangePassword(String text) {
    password = text;
    emit(ChangePasswordState());
  }

  void signInFunction() {
    emit(SignInSuccessState());
  }
}
