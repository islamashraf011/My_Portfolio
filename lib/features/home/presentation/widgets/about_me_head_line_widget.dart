import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class AboutMeHeadLineWidget extends StatelessWidget {
  const AboutMeHeadLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "About",
          style: AppTextStyles.textBold35(),
        ),
        Text(
          ' Me',
          style: AppTextStyles.textColorBold35(),
        ),
      ],
    );
  }
}
