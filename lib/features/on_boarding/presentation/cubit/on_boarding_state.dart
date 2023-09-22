part of 'on_boarding_cubit.dart';

@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class ChangeIndexState extends OnBoardingState {}

class DotChangeIndexState extends OnBoardingState {
  final int index;

  DotChangeIndexState(this.index);
}
