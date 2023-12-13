import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';

class ProductDetailsWidget extends StatelessWidget {
  final String text;
  const ProductDetailsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      trimLines: 5,
      colorClickableText: ColorManager.primaryLight,
      trimMode: TrimMode.Line,
      trimCollapsedText: StringManager.More,
      trimExpandedText: StringManager.Less,
      moreStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryLight),
      lessStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryLight),
    );
  }
}
