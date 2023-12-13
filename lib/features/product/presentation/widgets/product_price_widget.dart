import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';

class ProductPriceWidget extends StatelessWidget {
  final String price;
  final String? oldPrice;
  final String? offer;
  final bool isOffer;

  const ProductPriceWidget({
    super.key,
    required this.price,
    this.oldPrice,
    this.offer,
    required this.isOffer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isOffer)
          Text(
            oldPrice!,
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorManager.grey2,
            ),
          ),
        if (isOffer)
          SizedBox(
            width: 4,
          ),
        Text(
          price,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (isOffer)
          SizedBox(
            width: 4,
          ),
        if (isOffer)
          Text(
            '$offer OFF',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorManager.primaryLight,
            ),
          ),
      ],
    );
  }
}
