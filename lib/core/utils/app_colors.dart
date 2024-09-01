import 'package:flutter/material.dart';

abstract class AppColors {
  static const kPrimaryColor = 0xff010f22;
  static const kSecondaryColor = 0xffffb53a;

  static ThemeData darkMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(
      AppColors.kPrimaryColor,
    ),
  );
}
