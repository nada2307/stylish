import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/color_manager.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/core/widgets/components.dart';
import 'package:stylish/features/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:stylish/features/auth/sign_in/presentation/sign_in_screen.dart';

import '../../../../core/resources/string_manager.dart';
import '../models/on_boarding_item_model.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  int currentPage = 0;

  void prevFunction() {
    if (currentPage != 0) {
      pageController.animateToPage(
        currentPage - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void nextFunction(context) {
    if (currentPage != 2) {
      pageController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      signInFunction(context);
    }
  }

  void signInFunction(context) {
    navigateAndFinish(
      context,
      BlocProvider(
        create: (context) => SignInCubit(),
        child: SignInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: Row(
            children: [
              Text(
                '${currentPage + 1}',
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '/3',
                style: TextStyle(
                  color: ColorManager.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 15),
            child: Center(
              child: TextButton(
                onPressed: () {
                  signInFunction(context);
                },
                child: Text(
                  StringManager.skip,
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: BouncingScrollPhysics(),
                itemCount: 3,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
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
                    prevFunction();
                  },
                  child: Text(
                    currentPage != 0 ? StringManager.prev : '',
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
                  ), // your preferred effect
                  onDotClicked: (index) {
                    pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    nextFunction(context);
                  },
                  child: Text(
                    currentPage == 2
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
      ),
    );
  }
}
