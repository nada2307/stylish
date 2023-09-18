import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/resources/string_manager.dart';
import 'package:stylish/core/widgets/search_widget.dart';
import 'package:stylish/features/home/cubit/home_cubit.dart';
import 'package:stylish/features/home/presentation/widgets/categry_list_widget.dart';
import 'package:stylish/features/home/presentation/widgets/sale_item_widget.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/widgets/default_app_bar.dart';
import '../../../core/widgets/sort_filter_row_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          PageController saleController = PageController();
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
                    categories: cubit.categories,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        // PageView.builder(
                        //   scrollDirection: Axis.horizontal,
                        //   controller: saleController,
                        //   physics: const BouncingScrollPhysics(),
                        //   itemBuilder: (context, index) => Text('data'),
                        //   itemCount: 3,
                        // ),
                        SaleItemWidget(
                          title: '50-40% OFF',
                          text: 'Now in (product)',
                          text1: 'All colours',
                          image: AssetManager.sale,
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SmoothPageIndicator(
                          controller: saleController,
                          count: 3,
                          effect: WormEffect(
                            dotHeight: 9,
                            dotWidth: 9,
                            activeDotColor: ColorManager.primaryLight3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
