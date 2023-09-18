import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: ColorManager.themeColor,
    scaffoldBackgroundColor: ColorManager.background,
    appBarTheme: AppBarTheme(
        color: ColorManager.background,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: ColorManager.white,
        )),
  );
}
