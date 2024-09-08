import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/nav_items_list.dart';
import '../../../../core/utils/app_colors.dart';
import 'header_desktop.dart';
import 'header_mobile.dart';
import 'image_logo.dart';

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
          AppColors.kAppBarColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ImageLogo(),
              const Spacer(),
              if (ScreenUtil().screenWidth <= kScreenWidth)
                const HeaderMobile()
              else
                const HeaderDesktop()
            ],
          ),
        ),
      ),
    );
  }
}
