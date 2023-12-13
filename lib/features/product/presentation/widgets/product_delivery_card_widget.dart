import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';

class ProductDeliveryCartWidget extends StatelessWidget {
  final String deliveryTime;
  const ProductDeliveryCartWidget({super.key, required this.deliveryTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.primaryLight1,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Delivery in',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          Text(
            deliveryTime,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
