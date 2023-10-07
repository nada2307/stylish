import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/resources/color_manager.dart';
import 'package:stylish/features/product/presentation/widgets/product_images_widget.dart';
import 'package:stylish/features/product/presentation/widgets/product_size_widget.dart';
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
                  AssetManager.hotOffer,
                  AssetManager.sponserd1,
                  AssetManager.sponserd3,
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
              Row(
                children: [
                  RatingBar.builder(
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rate_rounded,
                      color: ColorManager.yellow,
                    ),
                    onRatingUpdate: (value) {},
                    initialRating: 2.5,
                    ignoreGestures: true,
                    itemSize: 20,
                    unratedColor: ColorManager.grey4,
                    allowHalfRating: true,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '56,890',
                    style: TextStyle(
                      color: ColorManager.darkGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              //price
              Row(
                children: [
                  Text(
                    '₹ 12,900 ',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorManager.grey2,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '₹ 1,500 ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '50% OFF',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.primaryLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              //Details
              Text(
                'Product Details',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ReadMoreText(
                'Perhaps the most iconic sneaker of all-time, ddddddddddddddddddddddddddddddddddd this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                trimLines: 5,
                colorClickableText: ColorManager.primaryLight,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'More',
                trimExpandedText: 'Less',
                moreStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.primaryLight),
                lessStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.primaryLight),
              ),
              const SizedBox(
                height: 8,
              ),
              TagsRowWidget(),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
