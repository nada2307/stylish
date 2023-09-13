import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());
  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  String email = '';

  void onChangeEmail(String text) {
    email = text;
    print(email);
    emit(ChangeEmailState());
  }

  void submitFunction() {
    emit(SendEmailSuccessState());
  }
}
