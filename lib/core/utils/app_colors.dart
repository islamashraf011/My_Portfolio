import 'package:flutter/material.dart';

abstract class AppColors {
  static const kPrimaryColor = 0xff010f22;
  static const kButtonColor = 0xffffb53a;
  static const kSecondaryColor = 0xff03152e;

  static ThemeData darkMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(
      AppColors.kPrimaryColor,
    ),
  );
}
