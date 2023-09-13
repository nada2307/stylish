part of 'forgot_password_cubit.dart';

@immutable
abstract class ForgotPasswordState {}

class ForgotPasswordInitial extends ForgotPasswordState {}

class ChangeEmailState extends ForgotPasswordState {}

class SendEmailSuccessState extends ForgotPasswordState {}
