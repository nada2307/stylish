part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeProductsSuccessScrollState extends HomeState {
  final double position;

  HomeProductsSuccessScrollState(this.position);
}

class HomeSmallProductsSuccessScrollState extends HomeState {
  final double position;

  HomeSmallProductsSuccessScrollState(this.position);
}

class HomeSearchProductsLoadingState extends HomeState {}

class HomeSearchProductsSuccessState extends HomeState {}

class HomeSearchProductsErrorState extends HomeState {
  final String error;

  HomeSearchProductsErrorState(this.error);
}
