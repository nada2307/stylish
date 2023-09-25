import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/features/home/cubit/home_cubit.dart';
import 'package:stylish/features/home/models/product_model.dart';

import '../../../../core/resources/color_manager.dart';
import 'product_small_item_widget.dart';

class ProductsSmallListWidget extends StatefulWidget {
  final List<ProductModel> products;

  const ProductsSmallListWidget({super.key, required this.products});

  @override
  State<ProductsSmallListWidget> createState() =>
      _ProductsSmallListWidgetState();
}

class _ProductsSmallListWidgetState extends State<ProductsSmallListWidget> {
  var scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeSmallProductsSuccessScrollState) {
          scrollController.animateTo(
            state.position,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              ListView.separated(
                controller: scrollController,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductSmallItemWidget(
                  product: widget.products[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 15,
                ),
                itemCount: widget.products.length,
              ),
              FloatingActionButton(
                heroTag: 'small products',
                backgroundColor: ColorManager.grey4.withOpacity(0.7),
                onPressed: () {
                  //todo
                  if (scrollController.hasClients) {
                    context.read<HomeCubit>().scrollPress(
                          p: scrollController.offset,
                          type: 's',
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
      },
    );
  }
}
