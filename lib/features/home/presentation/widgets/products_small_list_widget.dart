import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();
    return SizedBox(
      height: 190,
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
            backgroundColor: ColorManager.grey4.withOpacity(0.7),
            onPressed: () {
              //todo
              if (scrollController.hasClients) {
                setState(() {
                  var position = scrollController.position.maxScrollExtent;
                  print(position);
                  scrollController.animateTo(
                    position,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                });
              }
            },
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorManager.move,
            ),
          )
        ],
      ),
    );
  }
}
