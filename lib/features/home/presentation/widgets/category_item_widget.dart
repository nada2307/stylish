import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';

class CategoryItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final Function() onTap;
  const CategoryItemWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: ColorManager.move,
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
