import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/resources/color_manager.dart';
import '../../models/product_model.dart';

class HomeProductItemWidget extends StatelessWidget {
  final ProductModel product;
  final Function() onTap;

  const HomeProductItemWidget({
    super.key,
    required this.onTap,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width * 0.5) - 15,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: ColorManager.grey3.withOpacity(0.25),
            blurRadius: 3.0,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              product.image,
              height: 124,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  product.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '₹${product.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                if (product.isOffer)
                  Row(
                    children: [
                      Text(
                        '₹${product.oldPrice}',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: ColorManager.grey4,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        product.offer,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.lightRed,
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemBuilder: (context, index) => Icon(
                        Icons.star_rounded,
                        color: ColorManager.yellow,
                      ),
                      itemSize: 18,
                      unratedColor: ColorManager.grey4,
                      onRatingUpdate: (value) {},
                      itemCount: 5,
                      initialRating: product.rate,
                      allowHalfRating: true,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      product.ratingNumber.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.grey4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
