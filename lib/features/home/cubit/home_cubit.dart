import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/resources/asset_manager.dart';
import '../models/category_model.dart';
import '../models/product_model.dart';

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

  List<ProductModel> products = [
    ProductModel(
      image: AssetManager.product,
      name: 'Women Printed Kurta',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 1500,
      oldPrice: 2499,
      rate: 4.5,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product1,
      name: 'HRX by Hrithik Roshan',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 2499,
      oldPrice: 4999,
      rate: 3.0,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product2,
      description: 'Matte Gunmetal Black Full Rim Rectangle Sunglasses.',
      name: 'Vincent Chase Polarized',
      price: 1500,
      oldPrice: 2499,
      rate: 3,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product,
      name: 'Women Printed Kurta',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 1500,
      oldPrice: 2499,
      rate: 4.5,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product1,
      name: 'HRX by Hrithik Roshan',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 2499,
      oldPrice: 4999,
      rate: 3.0,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product2,
      description: 'Matte Gunmetal Black Full Rim Rectangle Sunglasses.',
      name: 'Vincent Chase Polarized',
      price: 1500,
      oldPrice: 2499,
      rate: 3,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
  ];
}
