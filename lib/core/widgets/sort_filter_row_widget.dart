import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';
import '../resources/my_icons_icons.dart';
import '../resources/string_manager.dart';

class SortAndFilterRowWidget extends StatelessWidget {
  final String text;
  const SortAndFilterRowWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Text(
                StringManager.sort,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                MyIcons.sort,
                size: 18,
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Text(
                StringManager.filter,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SvgPicture.asset(AssetManager.filter),
            ],
          ),
        ),
      ],
    );
  }
}
