part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class HomeSearchProductsLoadingState extends SearchState {}

class HomeSearchProductsSuccessState extends SearchState {}

class HomeSearchProductsErrorState extends SearchState {
  final String error;

  HomeSearchProductsErrorState(this.error);
}
