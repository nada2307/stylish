import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/resources/color_manager.dart';

class HomeProductItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;
  final Function() onTap;

  const HomeProductItemWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.price,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: ColorManager.grey3.withOpacity(0.25),
            blurRadius: 3.0,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              image,
              height: 124,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '₹$price',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '₹2499',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: ColorManager.grey4,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '40%Off',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: ColorManager.lightRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemBuilder: (context, index) => Icon(
                        Icons.star_rounded,
                        color: ColorManager.yellow,
                      ),
                      itemSize: 18,
                      unratedColor: ColorManager.grey4,
                      onRatingUpdate: (value) {},
                      itemCount: 5,
                      initialRating: 2,
                      allowHalfRating: true,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '56890',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.grey4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
