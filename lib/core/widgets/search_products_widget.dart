import 'package:flutter/material.dart';
import 'package:stylish/features/home/models/product_model.dart';

import '../../features/home/presentation/widgets/home_product_item_widget.dart';

class SearchProductsWidget extends StatelessWidget {
  final List<ProductModel> searchProducts;
  const SearchProductsWidget({super.key, required this.searchProducts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.7 / 2.88,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => HomeProductItemWidget(
          onTap: () {},
          product: searchProducts[index],
        ),
        itemCount: searchProducts.length,
      ),
    );
  }
}
