import 'package:flutter/material.dart';
import '../../../../core/components/custom_text_button.dart';
import '../../../../core/constants/nav_items_list.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < navTitles.length; i++)
          CustomTextButton(
            title: navTitles[i],
            onPressed: () {},
          )
      ],
    );
  }
}
