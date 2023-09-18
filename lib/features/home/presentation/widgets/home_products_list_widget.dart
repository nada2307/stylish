import 'package:flutter/material.dart';

import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import 'home_product_item_widget.dart';

class HomeProductsListWidget extends StatelessWidget {
  final ScrollController controller;
  const HomeProductsListWidget({super.key, required this.controller});

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
              image: AssetManager.start,
              name: 'Women Printed Kurta',
              description: 'Neque porro quisquam est qui dolorem ipsum quia',
              price: '1500',
              onTap: () {},
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 5,
            ),
            itemCount: 5,
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
