import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';

class ViewAllWidget extends StatelessWidget {
  final Function() onTap;
  Color color;

  ViewAllWidget(
      {super.key, required this.onTap, this.color = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 32,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: ColorManager.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringManager.shopNow,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: ColorManager.white,
            )
          ],
        ),
      ),
    );
  }
}
