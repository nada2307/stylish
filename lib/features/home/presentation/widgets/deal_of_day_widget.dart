import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import 'view_all_widget.dart';

class DealOfDayWidget extends StatelessWidget {
  final Function() onTap;

  const DealOfDayWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deal of the Day',
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
                    Icons.alarm,
                    size: 18,
                    color: ColorManager.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '22h 55m 20s remaining ',
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
