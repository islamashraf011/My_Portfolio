import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/utils/app_text_styles.dart';

class AddNewProjectButtonWidget extends StatelessWidget {
  const AddNewProjectButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: kProjectCardDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                size: 40.w,
                color: Colors.white.withOpacity(0.4),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Add New Project',
                style: AppTextStyles.textBoldColor22(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
