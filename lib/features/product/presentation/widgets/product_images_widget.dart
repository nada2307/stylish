import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/resources/color_manager.dart';

class ProductImagesWidget extends StatefulWidget {
  final List<String> images;

  const ProductImagesWidget({super.key, required this.images});

  @override
  State<ProductImagesWidget> createState() => _ProductImagesWidgetState();
}

class _ProductImagesWidgetState extends State<ProductImagesWidget> {
  var imageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            SizedBox(
              height: 213,
              child: PageView.builder(
                controller: imageController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.only(right: 4),
                  child: Image.asset(
                    widget.images[index],
                    height: 213,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                itemCount: widget.images.length,
              ),
            ),
            if (imageController.initialPage < 3)
              Positioned(
                right: 12,
                child: FloatingActionButton(
                  heroTag: 'product images',
                  backgroundColor: ColorManager.grey4.withOpacity(0.7),
                  onPressed: () {
                    print(imageController.position);
                    imageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorManager.black,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Center(
          child: SmoothPageIndicator(
            controller: imageController,
            count: widget.images.length,
            effect: WormEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: ColorManager.primary,
              dotColor: ColorManager.grey4,
            ),
          ),
        ),
      ],
    );
  }
}
