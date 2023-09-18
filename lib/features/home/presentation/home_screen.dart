import 'package:flutter/material.dart';
import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/resources/string_manager.dart';
import 'package:stylish/core/widgets/search_widget.dart';
import 'package:stylish/features/home/models/category_model.dart';
import 'package:stylish/features/home/presentation/widgets/categry_list_widget.dart';

import '../../../core/widgets/default_app_bar.dart';
import '../../../core/widgets/sort_filter_row_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> items = [
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
      CategoryModel(
        image: AssetManager.start,
        name: 'Beauty',
      ),
    ];
    var searchController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SearchWidget(
                    onChange: (value) {},
                    controller: searchController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SortAndFilterRowWidget(
                    text: StringManager.allFeatured,
                  ),
                ],
              ),
            ),
            CategoryListWidget(
              categories: items,
            ),
          ],
        ),
      ),
    );
  }
}
