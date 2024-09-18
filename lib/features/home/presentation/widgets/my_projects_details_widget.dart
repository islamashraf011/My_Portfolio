import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/my_projects_list.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_project_card_widget.dart';
import '../../../../core/constants/nav_items_list.dart';

class MyProjectsDetailsWidget extends StatelessWidget {
  const MyProjectsDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myProjects.length,
      padding:
          EdgeInsets.symmetric(horizontal: checkIsMobileScreen() ? 75.w : 50.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: checkIsMobileScreen() ? 1 : 3,
        childAspectRatio: checkIsMobileScreen() ? 0.7 : 1,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 20.h,
      ),
      itemBuilder: (context, index) => CustomProjectCardWidget(
        projectModel: myProjects[index],
      ),
    );
  }

// To Check is it Mobile or Desktop Screen.
  bool checkIsMobileScreen() => ScreenUtil().screenWidth <= kScreenWidth;
}