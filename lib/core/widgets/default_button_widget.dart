import 'package:flutter/material.dart';
import '../resources/color_manager.dart';

class DefaultButton extends StatelessWidget {
  double width;
  double height;

  final Function() function;

  final String text;

  Color background;
  Widget? widget;
  double radius;

  DefaultButton({
    Key? key,
    this.width = double.infinity,
    this.height = 55.0,
    required this.function,
    required this.text,
    this.background = ColorManager.primary,
    this.radius = 4.0,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: widget ??
            Text(
              text,
              style: const TextStyle(
                  color: ColorManager.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
      ),
    );
  }
}
