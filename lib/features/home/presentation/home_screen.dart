import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/features/home/cubit/home_cubit.dart';
import 'package:stylish/features/home/presentation/widgets/home_body_widget.dart';

import '../../../core/widgets/default_app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: defaultAppBar(),
        body: HomeBodyWidget(),
      ),
    );
  }
}
