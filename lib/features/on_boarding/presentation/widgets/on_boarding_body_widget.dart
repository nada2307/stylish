import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../models/on_boarding_item_model.dart';

class OnBoardingBodyWidget extends StatefulWidget {
  const OnBoardingBodyWidget({
    super.key,
  });

  @override
  State<OnBoardingBodyWidget> createState() => _OnBoardingBodyWidgetState();
}

class _OnBoardingBodyWidgetState extends State<OnBoardingBodyWidget> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {
        if (state is DotChangeIndexState) {
          pageController.animateToPage(
            state.index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      },
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);

        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  onPageChanged: (index) {
                    context
                        .read<OnBoardingCubit>()
                        .onChangeIndex(index: index, type: '');
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
                      context.read<OnBoardingCubit>().prevFunction();
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
                    controller: pageController, // PageController
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      activeDotColor: ColorManager.black,
                    ),
                    onDotClicked: (index) {
                      cubit.onChangeIndex(index: index, type: 'D');
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
