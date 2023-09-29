import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/app_cubit/app_cubit.dart';
import 'package:stylish/core/resources/asset_manager.dart';

import '../../../../core/resources/color_manager.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AppCubit>();
    return Container(
      height: 72,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarItem(
            selected: cubit.indicatorIndex == 0,
            image: AssetManager.home,
            index: 0,
            text: 'Home',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  cubit.changeIndicatorIndex(1);
                },
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: cubit.indicatorIndex == 1
                      ? ColorManager.primary
                      : ColorManager.black,
                ),
              ),
              Text(
                'Wishlist',
                style: TextStyle(
                  color: cubit.indicatorIndex == 1
                      ? ColorManager.primary
                      : ColorManager.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          BottomBarItem(
            selected: cubit.indicatorIndex == 3,
            image: AssetManager.search,
            index: 3,
            text: 'Search',
          ),
          BottomBarItem(
            selected: cubit.indicatorIndex == 4,
            image: AssetManager.settings,
            index: 4,
            text: 'Setting',
          ),
        ],
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final bool selected;
  final String image;
  final String text;
  final int index;

  const BottomBarItem(
      {super.key,
      required this.selected,
      required this.image,
      required this.index,
      required this.text});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AppCubit>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          minWidth: 40,
          onPressed: () {
            cubit.changeIndicatorIndex(index);
          },
          child: Image.asset(
            image,
            color: selected ? ColorManager.primary : ColorManager.black,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: selected ? ColorManager.primary : ColorManager.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
