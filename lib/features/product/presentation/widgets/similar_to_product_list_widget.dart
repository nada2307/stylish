import 'package:flutter/material.dart';

import '../../../home/models/product_model.dart';
import '../../../home/presentation/widgets/home_product_item_widget.dart';

class SimilarToProductListWidget extends StatelessWidget {
  final List<ProductModel> products;

  const SimilarToProductListWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => HomeProductItemWidget(
          onTap: () {},
          product: products[index],
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 12,
        ),
        itemCount: products.length,
      ),
    );
  }
}
