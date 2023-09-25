import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  final double cardWidth = 142;

  void scrollPress({required double p, required String type}) {
    double position = p;
    print(position);
    position = position + cardWidth;
    if (type == 's')
      emit(HomeSmallProductsSuccessScrollState(position));
    else
      emit(HomeProductsSuccessScrollState(position));
  }
}
