import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';

class SponsoredCardWidget extends StatelessWidget {
  final List<String> images;
  final Function() onPress;

  const SponsoredCardWidget(
      {super.key, required this.images, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: ColorManager.grey3.withOpacity(0.25),
              blurRadius: 3.0,
            ),
          ]),
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManager.sponsored,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.antiAlias,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  images[index],
                  height: 270,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              itemCount: images.length,
            ),
          ),
          Row(
            children: [
              Text(
                'up to 50% Off',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed: onPress,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorManager.grey5,
                    size: 18,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
