import 'package:flutter/material.dart';
import 'package:stylish/features/home/models/product_model.dart';

import '../../../../core/resources/color_manager.dart';

class ProductSmallItemWidget extends StatelessWidget {
  final ProductModel product;

  const ProductSmallItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(
          6,
        ),
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
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              product.image,
              height: 100,
              width: 142,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '₹${product.price}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 4,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
