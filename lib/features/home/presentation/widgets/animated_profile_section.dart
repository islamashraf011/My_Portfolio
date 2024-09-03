import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'animated_bird_widget.dart';
import 'name_text_widget.dart';

class AnimatedProfileSection extends StatelessWidget {
  const AnimatedProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff021a3b),
      height: 350.h,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          NameTextWidget(),
          AnimatedBirdWidget(),
        ],
      ),
    );
  }
}
