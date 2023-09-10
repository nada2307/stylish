import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: ColorManager.themeColor,
  );
}
