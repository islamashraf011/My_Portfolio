import 'package:flutter/material.dart';
import 'package:portfolio/core/components/custom_head_line_text_widget.dart';

class AboutMeHeadLineWidget extends StatelessWidget {
  const AboutMeHeadLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomHeadLineTextWidget(
      firstText: 'About',
      secText: ' Me',
    );
  }
}
