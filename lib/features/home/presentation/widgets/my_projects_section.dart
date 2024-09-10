import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/components/custom_head_line_text_widget.dart';

class MyProjectsSection extends StatelessWidget {
  const MyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        const CustomHeadLineTextWidget(
          firstText: 'My',
          secText: 'Projects',
        ),
      ],
    );
  }
}
