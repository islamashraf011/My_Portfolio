import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AnimatedBirdWidget extends StatelessWidget {
  const AnimatedBirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/bird_animation.json',
      repeat: false,
      fit: BoxFit.fill,
      width: 130.w,
      height: 1.sh,
    );
  }
}
