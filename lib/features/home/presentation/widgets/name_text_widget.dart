import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class NameTextWidget extends StatelessWidget {
  const NameTextWidget({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello,",
          style:isMobile?AppTextStyles.textBold25(): AppTextStyles.textNormal30(),
        ),
        Row(
          children: [
            Text(
              "I'm Islam",
              style:isMobile?AppTextStyles.textBold25(): AppTextStyles.textBold35(),
            ),
            Text(
              ' Ashraf',
              style:isMobile? AppTextStyles.textColorBold25(): AppTextStyles.textColorBold35(),
            ),
          ],
        ),
        Text(
          "Junior Flutter Developer",
          style:isMobile?AppTextStyles.textNormal20(): AppTextStyles.textNormal30(),
        ),
      ],
    );
  }
}
