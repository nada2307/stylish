import 'package:flutter/material.dart';

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

void navigateToh(
  context,
  widget,
) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
