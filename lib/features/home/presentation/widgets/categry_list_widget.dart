import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../models/category_model.dart';
import 'category_item_widget.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryListWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManager.grey2.withOpacity(0.25),
              blurRadius: 3.0,
            ),
          ],
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoryItemWidget(
              image: categories[index].image,
              name: categories[index].name,
              onTap: () {},
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: categories.length,
          ),
        ),
      ),
    );
  }
}
