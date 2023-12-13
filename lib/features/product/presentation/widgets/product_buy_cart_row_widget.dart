import 'package:flutter/material.dart';

import '../../../../core/resources/asset_manager.dart';

class ProductBuyCartRowWidget extends StatelessWidget {
  const ProductBuyCartRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(onTap: () {}, child: Image.asset(AssetManager.goToCart)),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(AssetManager.buyNow),
        ),
      ],
    );
  }
}
