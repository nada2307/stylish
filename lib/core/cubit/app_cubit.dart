import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  int indicatorIndex = 0;

  void changeIndicatorIndex(int index) {
    indicatorIndex = index;
    emit(LayoutChangeIndicatorIndexState());
  }
}
