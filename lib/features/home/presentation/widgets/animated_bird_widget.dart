import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart';

class AnimatedBirdWidget extends StatelessWidget {
  const AnimatedBirdWidget({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMobile ? 1.sw : 130.w,
      height: isMobile ? 180.h : 1.sh,
      child: const RiveAnimation.asset(
        'assets/animations/bird_re_animated.riv',
        fit: BoxFit.fill,
      ),
    );
  }
}
