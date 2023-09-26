import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:stylish/features/home/data/test_data.dart';

import '../models/product_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  final double cardWidth = 142;

  void scrollPress({required double p, required String type}) {
    double position = p;
    print(position);
    position = position + cardWidth;
    if (type == 's')
      emit(HomeSmallProductsSuccessScrollState(position));
    else
      emit(HomeProductsSuccessScrollState(position));
  }

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
