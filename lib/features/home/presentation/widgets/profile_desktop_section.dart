import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'animated_bird_widget.dart';
import 'name_text_widget.dart';

class ProfileDesktopSection extends StatelessWidget {
  const ProfileDesktopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff021a3b),
      height: 300.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const NameTextWidget(
            isMobile: false,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h),
            child: const AnimatedBirdWidget(
              isMobile: false,
            ),
          ),
        ],
      ),
    );
  }
}
