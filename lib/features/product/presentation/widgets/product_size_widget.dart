import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';

class ProductSizeWidget extends StatelessWidget {
  const ProductSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size: 7UK',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 33,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductSizeItemWidget(
              size: sizes[index].size,
              isSelected: sizes[index].isSelected,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            itemCount: sizes.length,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class ProductSizeItemWidget extends StatelessWidget {
  final String size;
  final bool isSelected;

  const ProductSizeItemWidget({
    super.key,
    required this.size,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 56,
      decoration: BoxDecoration(
        color: isSelected ? ColorManager.primaryLight : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: ColorManager.primaryLight,
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? ColorManager.white : ColorManager.primaryLight,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SizeModel {
  final String size;
  final bool isSelected;

  SizeModel({
    required this.size,
    required this.isSelected,
  });
}

List<SizeModel> sizes = [
  SizeModel(
    size: '6 UK',
    isSelected: false,
  ),
  SizeModel(
    size: '7 UK',
    isSelected: true,
  ),
  SizeModel(
    size: '8 UK',
    isSelected: false,
  ),
  SizeModel(
    size: '9 UK',
    isSelected: false,
  ),
  SizeModel(
    size: '10 UK',
    isSelected: false,
  ),
];
