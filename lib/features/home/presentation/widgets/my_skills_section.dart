import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/components/custom_head_line_text_widget.dart';
import 'my_skills_details_widget.dart';

class MySkillsSection extends StatelessWidget {
  const MySkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        const CustomHeadLineTextWidget(
          firstText: 'My',
          secText: ' Skills',
        ),
        const MySkillsDetailsWidget(),
      ],
    );
  }
}
