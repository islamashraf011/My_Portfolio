import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static textBold16() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    );
  }

  static textColorBold16() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: const Color(
        AppColors.kOrangeColor,
      ),
    );
  }

  static textNormal10() {
    return TextStyle(
      fontSize: 10.sp,
    );
  }
}
