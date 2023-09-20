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

  List<ProductModel> smallProducts = [
    ProductModel(
      image: AssetManager.product6,
      name: 'IWC Schaffhausen\n2021 Pilot\'s Watch "SIHH 2019" 44mm',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 1500,
      oldPrice: 2499,
      rate: 3,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product5,
      description: 'Matte Gunmetal Black Full Rim Rectangle Sunglasses.',
      name: 'Labbin White Sneakers\nFor Men and Female',
      price: 1500,
      oldPrice: 2499,
      rate: 3.5,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.product4,
      name: 'Mammon Women\'s Handbag\n(Set of 3, Beige)',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 1500,
      oldPrice: 2499,
      rate: 4.5,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.lipstick,
      name: 'Lakme Enrich Matte Lipstick - Shade RM1(4.7gm)',
      description: 'Neque porro quisquam est qui dolorem ipsum quia',
      price: 2499,
      oldPrice: 4999,
      rate: 3.0,
      offer: '40%Off',
      isOffer: true,
      ratingNumber: 56890,
    ),
    ProductModel(
      image: AssetManager.sandal,
      name: 'Do Bhai Women Wedges Sandal (Butterfly)',
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

  List<String> sponsoredImages = [
    AssetManager.sponserd,
    AssetManager.sponserd1,
    AssetManager.sponserd2,
    AssetManager.sponserd3,
  ];
}
