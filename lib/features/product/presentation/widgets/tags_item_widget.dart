import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';

class TagsItemWidget extends StatelessWidget {
  final Widget widget;
  final String text;
  const TagsItemWidget({super.key, required this.widget, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      //width: 100,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: ColorManager.darkGrey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget,
          SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: TextStyle(
              color: ColorManager.darkGrey,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
