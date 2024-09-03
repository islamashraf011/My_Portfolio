import 'package:flutter/material.dart';
import '../../../../core/components/custom_text_button.dart';

class CustomTextButtonsBar extends StatelessWidget {
  const CustomTextButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextButton(
          onPressed: () {},
          title: 'Home',
        ),
        CustomTextButton(
          onPressed: () {},
          title: 'Skills',
        ),
        CustomTextButton(
          onPressed: () {},
          title: 'Projects',
        ),
        CustomTextButton(
          onPressed: () {},
          title: 'Contact',
        ),
      ],
    );
  }
}
