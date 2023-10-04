import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/cubit/search_cubit.dart';
import 'package:stylish/core/widgets/search_widget.dart';
import 'package:stylish/core/widgets/search_products_widget.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/string_manager.dart';
import '../../../core/widgets/default_app_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          var cubit = context.read<SearchCubit>();
          return Scaffold(
            appBar: defaultAppBar(),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SearchWidget(
                      onChange: (value) {
                        cubit.productSearchFunction(value);
                      },
                      controller: searchController,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    searchController.text.isEmpty
                        ? Container()
                        : cubit.searchProducts.isEmpty
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text(
                                    StringManager.noProductsFound,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: ColorManager.darkGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            : SearchProductsWidget(
                                searchProducts: cubit.searchProducts,
                              ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
