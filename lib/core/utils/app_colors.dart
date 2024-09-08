import 'package:flutter/material.dart';

abstract class AppColors {
  static const kPrimaryColor = 0xff010f22;
  static const kOrangeColor = 0xffffb53a;
  static const kAppBarColor = 0xff03152e;
  static const kHeaderColor = 0xff021a3b;

  static ThemeData darkMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(
      AppColors.kPrimaryColor,
    ),
  );
}
