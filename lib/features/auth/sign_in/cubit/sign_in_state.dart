part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {}

class SignInInitial extends SignInState {}

class ChangeEmailState extends SignInState {}

class ChangePasswordState extends SignInState {}

class SignInSuccessState extends SignInState {}
