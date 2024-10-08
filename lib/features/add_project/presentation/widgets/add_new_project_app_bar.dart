import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';

class AddNewProjectAppBar extends StatelessWidget {
  const AddNewProjectAppBar({super.key});

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
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                iconSize: 18,
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.clear),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Add New Project',
                    style: AppTextStyles.textNormal20(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
