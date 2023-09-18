import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/string_manager.dart';
import 'package:stylish/core/widgets/search_widget.dart';
import 'package:stylish/features/home/cubit/home_cubit.dart';
import 'package:stylish/features/home/presentation/widgets/categry_list_widget.dart';

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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
