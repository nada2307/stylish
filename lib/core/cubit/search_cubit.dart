import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../features/home/data/test_data.dart';
import '../../features/home/models/product_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  Set<ProductModel> allProducts = products.toSet().union(smallProducts.toSet());

  List<ProductModel> searchProducts = [];

  void productSearchFunction(String text) {
    emit(HomeSearchProductsLoadingState());
    searchProducts = [];
    try {
      searchProducts = allProducts
          .where((character) => character.name.toLowerCase().contains(text))
          .toList();
      print(searchProducts[0].name);
      emit(HomeSearchProductsSuccessState());
    } catch (error) {
      emit(HomeSearchProductsErrorState(error.toString()));
    }
  }
}
