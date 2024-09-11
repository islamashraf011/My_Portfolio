import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomProjectNameWidget extends StatelessWidget {
  const CustomProjectNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Quran App',
        style: AppTextStyles.textNormalColor16(),
      ),
      subtitle: const Text(
        textAlign: TextAlign.justify,
        'nbnbnbnbnbnbnbbnbnbnbnnbbnbnbnbnbnbbnbnbnbnnbbnbnbnbnbnbbnbnbnbnnbbnbnbnbnbn',
      ),
    );
  }
}
