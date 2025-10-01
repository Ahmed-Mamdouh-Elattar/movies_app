import 'package:flutter/material.dart';
import 'package:movies_app/core/config/app_color.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.primary,
      appBarTheme: AppBarTheme(backgroundColor: AppColor.primary),
    );
  }
}
