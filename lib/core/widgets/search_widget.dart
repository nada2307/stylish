import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/my_icons_icons.dart';
import '../resources/string_manager.dart';

class SearchWidget extends StatelessWidget {
  final Function(String) onChange;
  final TextEditingController controller;

  const SearchWidget(
      {super.key, required this.onChange, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
      ),
      width: double.infinity,
      height: 50,
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        style: TextStyle(
          color: ColorManager.primary,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: ColorManager.grey4,
          ),
          hintText: StringManager.searchAnyProduct,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorManager.grey4,
          ),
          suffixIcon: Icon(
            MyIcons.mic_none,
            color: ColorManager.grey4,
          ),
          border: InputBorder.none,
        ),
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      ),
    );
  }
}
