import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AnimatedBirdWidget extends StatelessWidget {
  const AnimatedBirdWidget({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/bird_animation.json',
      repeat: false,
      fit: BoxFit.fill,
      width: isMobile ? 1.sw : 130.w,
      height: isMobile ? 180.h : 1.sh,
    );
  }
}
