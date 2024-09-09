import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

class CustomHeadLineTextWidget extends StatelessWidget {
  const CustomHeadLineTextWidget(
      {super.key, required this.firstText, required this.secText});
  final String firstText;
  final String secText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: AppTextStyles.textBold35(),
        ),
        Text(
          secText,
          style: AppTextStyles.textColorBold35(),
        ),
      ],
    );
  }
}
