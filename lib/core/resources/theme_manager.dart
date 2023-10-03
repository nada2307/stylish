import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: ColorManager.themeColor,
    scaffoldBackgroundColor: ColorManager.background,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.background,
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.white,
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.black,
      selectedLabelStyle: TextStyle(
        color: ColorManager.primary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        color: ColorManager.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      selectedIconTheme: IconThemeData(
        color: ColorManager.primary,
      ),
      unselectedIconTheme: IconThemeData(
        color: ColorManager.black,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: ColorManager.primaryLight,
    ),
    splashColor: ColorManager.primaryLight,
  );
}
