import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/resources/color_manager.dart';
import 'package:stylish/core/resources/string_manager.dart';
import 'package:stylish/core/widgets/search_widget.dart';
import 'package:stylish/features/home/presentation/widgets/categry_list_widget.dart';
import 'package:stylish/features/home/presentation/widgets/deal_of_day_widget.dart';
import 'package:stylish/features/home/presentation/widgets/home_products_list_widget.dart';
import 'package:stylish/features/home/presentation/widgets/hot_offers_card_widget.dart';
import 'package:stylish/features/home/presentation/widgets/products_small_list_widget.dart';
import 'package:stylish/core/widgets/search_products_widget.dart';
import 'package:stylish/features/home/presentation/widgets/special_offer_widget.dart';
import 'package:stylish/features/home/presentation/widgets/sponsored_card_widget.dart';
import 'package:stylish/features/home/presentation/widgets/trending_card_widget.dart';

import '../../../../core/cubit/search_cubit.dart';
import '../../../../core/widgets/sort_filter_row_widget.dart';
import '../../data/test_data.dart';
import 'sale_list_widget.dart';

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({super.key});

  @override
  State<HomeBodyWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        var cubit = context.read<SearchCubit>();

        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SearchWidget(
                      onChange: (value) {
                        cubit.productSearchFunction(value);
                        log(cubit.searchProducts.length.toString());
                      },
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
              searchController.text.isEmpty
                  ? Column(
                      children: [
                        CategoryListWidget(
                          categories: categories,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SaleListWidget(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              DealOfDayWidget(
                                onTap: () {},
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              HomeProductsListWidget(
                                products: products,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Special1offerWidget(),
                              const SizedBox(
                                height: 15,
                              ),
                              //todo card
                              const SizedBox(
                                height: 15,
                              ),
                              TrendingCardWidget(onTap: () {}),
                              const SizedBox(
                                height: 15,
                              ),
                              ProductsSmallListWidget(products: smallProducts),
                              const SizedBox(
                                height: 15,
                              ),
                              HotOffersCardWidget(
                                images: [
                                  AssetManager.hotOffer,
                                  AssetManager.hotOffer1,
                                ],
                                onTap: () {},
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SponsoredCardWidget(
                                images: sponsoredImages,
                                onPress: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
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
                          searchProducts: cubit.searchProducts),
            ],
          ),
        );
      },
    );
  }
}
