import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/add_project/presentation/widgets/add_new_project_view_body.dart';

class AddNewProjectView extends StatelessWidget {
  const AddNewProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().screenWidth <= 690 ? 30.w : 100.w,
        vertical: 50.h,
      ),
      color: const Color(AppColors.kAppBarColor).withOpacity(0.7),
      child: const AddNewProjectViewBody(),
    );
  }
}
