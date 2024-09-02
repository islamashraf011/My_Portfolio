import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/components/custom_text_button.dart';
import '../../../../core/utils/app_colors.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/bird.png",
                fit: BoxFit.fill,
                height: 35.h,
              ),
              const Spacer(),
              CustomTextButton(
                onPressed: () {},
                title: 'Home',
              ),
              CustomTextButton(
                onPressed: () {},
                title: 'Skills',
              ),
              CustomTextButton(
                onPressed: () {},
                title: 'Projects',
              ),
              CustomTextButton(
                onPressed: () {},
                title: 'Contact',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
