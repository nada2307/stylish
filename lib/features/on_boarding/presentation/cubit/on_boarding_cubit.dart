import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  int currentPage = 0;

  void onChangeIndex({required int index, required String type}) {
    int i;
    if (type == 'd') {
      i = index;
      emit(DotChangeIndexState(i));
    } else {
      currentPage = index;
      emit(ChangeIndexState());
    }
  }

  void prevFunction() {
    if (currentPage != 0) {
      int i = currentPage - 1;
      emit(DotChangeIndexState(i));
    }
  }

  void nextFunction() {
    if (currentPage != 2) {
      int i = currentPage + 1;
      emit(DotChangeIndexState(i));

      emit(ChangeIndexState());
    }
  }
}
