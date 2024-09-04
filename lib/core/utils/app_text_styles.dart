import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

//for Desktop
abstract class AppTextStyles {
  static textBold35() {
    return const TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      height: 1.5,
    );
  }

  static textColorBold35() {
    return const TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: Color(
        AppColors.kOrangeColor,
      ),
    );
  }

  static textNormal30() {
    return const TextStyle(
      fontSize: 30,
      height: 1.5,
    );
  }

/////////////////////////////////////////////////////////////////
  // for Mobile
  static textBold25() {
    return const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      height: 1.5,
    );
  }

  static textColorBold25() {
    return const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: Color(
        AppColors.kOrangeColor,
      ),
    );
  }

  static textNormal20() {
    return const TextStyle(
      fontSize: 20,
      height: 1.5,
    );
  }
}