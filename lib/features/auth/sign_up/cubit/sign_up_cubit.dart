import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static SignUpCubit get(context) => BlocProvider.of(context);

  String email = '';
  String password = '';
  String confirmPassword = '';
  void onChangeEmail(String text) {
    email = text;
    print(email);
    emit(ChangeEmailState());
  }

  void onChangePassword(String text) {
    password = text;
    emit(ChangePasswordState());
  }

  void onChangeConfirmPassword(String text) {
    confirmPassword = text;
    emit(ChangeConfirmPasswordState());
  }

  void signUpFunction() {
    emit(SignUpSuccessState());
  }
}
