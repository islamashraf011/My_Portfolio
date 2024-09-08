import 'package:flutter/material.dart';
import 'about_me_details_widget.dart';
import 'about_me_head_line_widget.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AboutMeHeadLineWidget(),
        AboutMeDetailsWidget(),
      ],
    );
  }
}
