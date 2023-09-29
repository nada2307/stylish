import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/features/home/presentation/home_screen.dart';
import 'package:stylish/core/app_cubit/app_cubit.dart';
import 'package:stylish/features/layout/presentation/widgets/bottom_bar_widget.dart';

import '../../../core/resources/color_manager.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> pages = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = context.read<AppCubit>();
        return Scaffold(
          body: pages[cubit.indicatorIndex],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: cubit.indicatorIndex == 2
                ? ColorManager.primary
                : ColorManager.white,
            onPressed: () {
              cubit.changeIndicatorIndex(2);
            },
            child: Image.asset(
              AssetManager.cart,
              color: cubit.indicatorIndex == 2
                  ? ColorManager.white
                  : ColorManager.black,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            child: BottomBarWidget(),
          ),
        );
      },
    );
  }
}
