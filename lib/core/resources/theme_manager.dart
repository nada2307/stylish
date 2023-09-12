import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: ColorManager.themeColor,
    scaffoldBackgroundColor: ColorManager.white,
    appBarTheme: AppBarTheme(
      color: ColorManager.white,
      elevation: 0.0,
    ),
  );
}
