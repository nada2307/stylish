import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  PageController pageController = PageController();

  int currentPage = 0;

  void onChangeIndex(int index, String x) {
    if (x == 'D') {
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      currentPage = index;
    }
    emit(ChangeIndexState());
  }

  void prevFunction() {
    if (currentPage != 0) {
      pageController.animateToPage(
        currentPage - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      emit(ChangeIndexState());
    }
  }

  void nextFunction() {
    if (currentPage != 2) {
      pageController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      emit(ChangeIndexState());
    }
  }
}
