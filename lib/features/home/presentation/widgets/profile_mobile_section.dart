import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/utils/app_colors.dart';

import 'animated_bird_widget.dart';
import 'name_text_widget.dart';

class ProfileMobileSection extends StatelessWidget {
  const ProfileMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(AppColors.kHeaderColor),
      height: 300.h,
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedBirdWidget(isMobile: true),
            NameTextWidget(isMobile: true)
          ],
        ),
      ),
    );
  }
}
