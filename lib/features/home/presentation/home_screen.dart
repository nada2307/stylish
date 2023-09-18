import 'package:flutter/material.dart';
import 'package:stylish/core/widgets/search_widget.dart';

import '../../../core/widgets/default_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SearchWidget(
              onChange: (value) {},
              controller: searchController,
            ),
          ],
        ),
      ),
    );
  }
}
