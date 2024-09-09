import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/constant.dart';
import 'package:portfolio/core/constants/my_skills_list.dart';
import 'package:portfolio/core/constants/nav_items_list.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class MySkillsDetailsWidget extends StatelessWidget {
  const MySkillsDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: checkIsMobileScreen() ? 340 : 250,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mySkills.length,
        padding: EdgeInsets.symmetric(
            horizontal: checkIsMobileScreen() ? 8.w : 30.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: checkIsMobileScreen() ? 2 : 4,
          childAspectRatio: checkIsMobileScreen() ? 5.7 : 6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => Container(
          decoration: mySkillsDecoration,
          child: Center(
            child: Text(
              mySkills[index],
              style: AppTextStyles.textNormal16(),
            ),
          ),
        ),
      ),
    );
  }

// To Check is it Mobile or Desktop Screen.
  bool checkIsMobileScreen() => ScreenUtil().screenWidth <= kScreenWidth;
}
