import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/core/resources/string_manager.dart';

import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';

class SimilarCompareRowWidget extends StatelessWidget {
  const SimilarCompareRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SimilarCompareItemWidget(
          widget: Icon(Icons.remove_red_eye_outlined),
          text: StringManager.viewSimilar,
        ),
        const SizedBox(
          width: 5,
        ),
        SimilarCompareItemWidget(
          widget: SvgPicture.asset(AssetManager.compare),
          text: StringManager.addToCompare,
        )
      ],
    );
  }
}

class SimilarCompareItemWidget extends StatelessWidget {
  final Widget widget;
  final String text;

  const SimilarCompareItemWidget(
      {super.key, required this.widget, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: ColorManager.grey3.withOpacity(0.25),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget,
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
