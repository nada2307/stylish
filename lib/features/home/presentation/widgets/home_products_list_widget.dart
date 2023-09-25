import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/features/home/cubit/home_cubit.dart';
import 'package:stylish/features/home/models/product_model.dart';

import '../../../../core/resources/color_manager.dart';
import 'home_product_item_widget.dart';

class HomeProductsListWidget extends StatefulWidget {
  final List<ProductModel> products;

  const HomeProductsListWidget({super.key, required this.products});

  @override
  State<HomeProductsListWidget> createState() => _HomeProductsListWidgetState();
}

class _HomeProductsListWidgetState extends State<HomeProductsListWidget> {
  var scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeProductsSuccessScrollState) {
          scrollController.animateTo(
            state.position,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      },
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          SizedBox(
            height: 245,
            child: ListView.separated(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => HomeProductItemWidget(
                product: widget.products[index],
                onTap: () {},
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
              itemCount: widget.products.length,
            ),
          ),
          FloatingActionButton(
            heroTag: 'products',
            backgroundColor: ColorManager.grey4.withOpacity(0.7),
            onPressed: () {
              if (scrollController.hasClients) {
                context.read<HomeCubit>().scrollPress(
                      p: scrollController.offset,
                      type: 'p',
                    );
              }
            },
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorManager.move,
            ),
          ),
        ],
      ),
    );
  }
}
