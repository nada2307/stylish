import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/resources/color_manager.dart';

class RateRowWidget extends StatelessWidget {
  final double rate;
  final int rateNumbers;
  const RateRowWidget(
      {super.key, required this.rate, required this.rateNumbers});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemBuilder: (context, index) => Icon(
            Icons.star_rate_rounded,
            color: ColorManager.yellow,
          ),
          onRatingUpdate: (value) {},
          initialRating: rate,
          ignoreGestures: true,
          itemSize: 20,
          unratedColor: ColorManager.grey4,
          allowHalfRating: true,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          rateNumbers.toString(),
          style: TextStyle(
            color: ColorManager.darkGrey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
