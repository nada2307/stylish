import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/my_icons_icons.dart';
import '../../../../core/resources/string_manager.dart';
import 'view_all_widget.dart';

class TrendingCardWidget extends StatelessWidget {
  final Function() onTap;

  const TrendingCardWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.pink,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringManager.trendingProducts,
                style: TextStyle(
                  color: ColorManager.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    MyIcons.calendar,
                    size: 18,
                    color: ColorManager.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Last Date 29/02/22',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          ViewAllWidget(onTap: onTap),
        ],
      ),
    );
  }
}
