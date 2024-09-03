import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class NameTextWidget extends StatelessWidget {
  const NameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello,",
          style: AppTextStyles.textNormal10(),
        ),
        Row(
          children: [
            Text(
              "I'm Islam",
              style: AppTextStyles.textBold16(),
            ),
            Text(
              ' Ashraf',
              style: AppTextStyles.textColorBold16(),
            ),
          ],
        ),
        Text(
          "Junior Flutter Developer",
          style: AppTextStyles.textNormal10(),
        ),
      ],
    );
  }
}
