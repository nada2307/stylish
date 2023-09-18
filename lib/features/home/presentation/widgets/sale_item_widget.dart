import 'package:flutter/material.dart';
import 'package:stylish/features/home/presentation/widgets/view_all_widget.dart';

import '../../../../core/resources/color_manager.dart';

class SaleItemWidget extends StatelessWidget {
  final String title;
  final String text;
  final String text1;
  final String image;
  final Function() onTap;
  const SaleItemWidget(
      {super.key,
      required this.title,
      required this.text,
      required this.text1,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            image,
            height: 190,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                text1,
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ViewAllWidget(onTap: onTap),
            ],
          ),
        )
      ],
    );
  }
}
