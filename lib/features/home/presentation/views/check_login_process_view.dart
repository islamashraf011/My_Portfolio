import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/check_login_process_view_body.dart';

class CheckLoginProcessView extends StatelessWidget {
  const CheckLoginProcessView({super.key, this.projectId});
  final String? projectId;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().screenWidth <= 690 ? 40.w : 120.w,
        vertical: 200.h,
      ),
      color: const Color(AppColors.kAppBarColor).withOpacity(0.7),
      child: CheckLoginProcessViewBody(
        projectId: projectId,
      ),
    );
  }
}
