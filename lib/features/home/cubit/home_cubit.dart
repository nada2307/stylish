import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/resources/asset_manager.dart';
import '../models/category_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<CategoryModel> categories = [
    CategoryModel(
      image: AssetManager.beauty,
      name: 'Beauty',
    ),
    CategoryModel(
      image: AssetManager.fashion,
      name: 'Fashion',
    ),
    CategoryModel(
      image: AssetManager.kids,
      name: 'Kids',
    ),
    CategoryModel(
      image: AssetManager.men,
      name: 'Men',
    ),
    CategoryModel(
      image: AssetManager.women,
      name: 'Women',
    ),
    CategoryModel(
      image: AssetManager.electronics,
      name: 'Electronics',
    ),
  ];
}
