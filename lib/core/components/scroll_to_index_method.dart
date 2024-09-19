import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void scrollToIndex(int index, PageController controller) {
  double offset = 0.0;
  final double size = ScreenUtil().screenHeight;

  // Calculate the offset based on the index of the section
  switch (index) {
    case 1:
      ScreenUtil().screenWidth <= 690 ? offset = size * 1.03 : offset = 600.0;
      // Adjust the offset for the My Skills e section
      break;
    case 2:
      ScreenUtil().screenWidth <= 690 ? offset = size * 1.5 : offset = 900.0;
      // Adjust the offset for the My Projects section
      break;
    case 3:
      offset = size.sh;
      // Adjust the offset for the Contact section
      break;
    default:
      break;
  }

  controller.animateTo(
    offset,
    duration: offset == size.sh
        ? const Duration(seconds: 30)
        : const Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}
