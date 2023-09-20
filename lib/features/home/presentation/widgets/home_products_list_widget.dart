import 'package:flutter/material.dart';
import 'package:stylish/features/home/models/product_model.dart';

import '../../../../core/resources/color_manager.dart';
import 'home_product_item_widget.dart';

class HomeProductsListWidget extends StatelessWidget {
  final ScrollController controller;
  final List<ProductModel> products;

  const HomeProductsListWidget(
      {super.key, required this.controller, required this.products});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        SizedBox(
          height: 245,
          child: ListView.separated(
            controller: controller,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => HomeProductItemWidget(
              product: products[index],
              onTap: () {},
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 5,
            ),
            itemCount: products.length,
          ),
        ),
        CircleAvatar(
          backgroundColor: ColorManager.grey2,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorManager.move,
            ),
          ),
        ),
      ],
    );
  }
}
