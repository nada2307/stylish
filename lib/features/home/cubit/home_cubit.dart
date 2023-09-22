import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  final double cardWidth = 142;

  void scrollPress(double p) {
    double position = p;
    print(position);
    position = position + cardWidth;
    emit(HomeSuccessScrollState(position));
  }
}
