import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../models/on_boarding_item_model.dart';

class OnBoardingBodyWidget extends StatelessWidget {
  final OnBoardingCubit cubit;

  const OnBoardingBodyWidget({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: cubit.pageController,
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  onPageChanged: (index) {
                    cubit.onChangeIndex(index, '');
                    log(index.toString());
                  },
                  itemBuilder: (context, index) => Column(
                    children: [
                      SvgPicture.asset(
                        items[index].image,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        items[index].title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        items[index].body,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorManager.grey1,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      cubit.prevFunction();
                    },
                    child: Text(
                      cubit.currentPage != 0 ? StringManager.prev : '',
                      style: TextStyle(
                        color: ColorManager.grey2,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Spacer(),
                  SmoothPageIndicator(
                    controller: cubit.pageController, // PageController
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      activeDotColor: ColorManager.black,
                    ), // your preferred effect
                    onDotClicked: (index) {
                      cubit.onChangeIndex(index, 'D');
                    },
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      cubit.nextFunction();
                    },
                    child: Text(
                      cubit.currentPage == 2
                          ? StringManager.getStarted
                          : StringManager.next,
                      style: TextStyle(
                        color: ColorManager.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
