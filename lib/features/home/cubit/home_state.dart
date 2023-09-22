part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeSuccessScrollState extends HomeState {
  final double position;

  HomeSuccessScrollState(this.position);
}
