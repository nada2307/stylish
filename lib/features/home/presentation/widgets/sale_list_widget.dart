import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import 'sale_item_widget.dart';

class SaleListWidget extends StatefulWidget {
  const SaleListWidget({super.key});

  @override
  State<SaleListWidget> createState() => _SaleListWidgetState();
}

class _SaleListWidgetState extends State<SaleListWidget> {
  var saleController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: saleController,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SaleItemWidget(
                title: '50-40% OFF',
                text: 'Now in (product)',
                text1: 'All colours',
                image: AssetManager.sale,
                onTap: () {},
              ),
            ),
            itemCount: 3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: saleController,
          count: 3,
          effect: WormEffect(
            dotHeight: 9,
            dotWidth: 9,
            activeDotColor: ColorManager.primaryLight3,
          ),
        ),
      ],
    );
  }
}
