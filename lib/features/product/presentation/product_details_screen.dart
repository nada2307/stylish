import 'package:flutter/material.dart';

import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/resources/color_manager.dart';
import 'package:stylish/core/resources/string_manager.dart';
import 'package:stylish/core/widgets/sort_filter_row_widget.dart';
import 'package:stylish/features/home/models/product_model.dart';
import 'package:stylish/features/product/presentation/widgets/product_buy_cart_row_widget.dart';
import 'package:stylish/features/product/presentation/widgets/product_delivery_card_widget.dart';
import 'package:stylish/features/product/presentation/widgets/product_details_widget.dart';
import 'package:stylish/features/product/presentation/widgets/product_images_widget.dart';
import 'package:stylish/features/product/presentation/widgets/product_price_widget.dart';
import 'package:stylish/features/product/presentation/widgets/product_size_widget.dart';
import 'package:stylish/features/product/presentation/widgets/rate_row_widget.dart';
import 'package:stylish/features/product/presentation/widgets/similar_compare_row_widget.dart';
import 'package:stylish/features/product/presentation/widgets/similar_to_product_list_widget.dart';
import 'package:stylish/features/product/presentation/widgets/tags_row_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: ColorManager.white1,
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: ColorManager.grey5,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImagesWidget(
                images: [
                  AssetManager.nike,
                  AssetManager.nike1,
                  AssetManager.nike2,
                  AssetManager.nike3,
                  AssetManager.nike4,
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ProductSizeWidget(),
              //title
              Text(
                'NIke Sneakers',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              //sub title
              Text(
                'Vision Alta Men’s Shoes Size (All Colours)',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              //rate
              RateRowWidget(
                rate: 2.5,
                rateNumbers: 56890,
              ),
              const SizedBox(
                height: 8,
              ),
              //price
              ProductPriceWidget(
                price: '₹ 1,500 ',
                oldPrice: '₹ 12,900 ',
                isOffer: true,
                offer: '50%',
              ),
              const SizedBox(
                height: 8,
              ),
              //Details
              Text(
                StringManager.productDetails,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ProductDetailsWidget(
                text:
                    'Perhaps the most  iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ',
              ),
              const SizedBox(
                height: 8,
              ),
              TagsRowWidget(),
              const SizedBox(
                height: 12,
              ),
              ProductBuyCartRowWidget(),
              const SizedBox(
                height: 12,
              ),
              ProductDeliveryCartWidget(deliveryTime: '1 within Hour'),
              const SizedBox(
                height: 12,
              ),
              SimilarCompareRowWidget(),
              const SizedBox(
                height: 15,
              ),
              //similar to
              Text(
                StringManager.similarTo,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SortAndFilterRowWidget(text: '282+ Items '),
              const SizedBox(
                height: 15,
              ),
              SimilarToProductListWidget(
                products: [
                  ProductModel(
                    image: AssetManager.nike,
                    name: 'NIke Sneakers',
                    description: 'Nike Air Jordan Retro 1 Low Mystic Black',
                    price: 1900,
                    oldPrice: 200,
                    rate: 4.5,
                    offer: '10',
                    isOffer: false,
                    ratingNumber: 46890,
                  ),
                  ProductModel(
                    image: AssetManager.nike,
                    name: 'NIke Sneakers',
                    description: 'Nike Air Jordan Retro 1 Low Mystic Black',
                    price: 1900,
                    oldPrice: 200,
                    rate: 4.5,
                    offer: '10',
                    isOffer: false,
                    ratingNumber: 46890,
                  ),
                  ProductModel(
                    image: AssetManager.nike,
                    name: 'NIke Sneakers',
                    description: 'Nike Air Jordan Retro 1 Low Mystic Black',
                    price: 1900,
                    oldPrice: 200,
                    rate: 4.5,
                    offer: '10',
                    isOffer: false,
                    ratingNumber: 46890,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
