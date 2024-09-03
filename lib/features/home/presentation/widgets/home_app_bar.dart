import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import 'custom_text_button_section.dart';
import 'image_logo_section.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Card(
        elevation: 1.r,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.w),
        ),
        color: const Color(
          AppColors.kSecondaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageLogoSection(),
              Spacer(),
              CustomTextButtonsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
