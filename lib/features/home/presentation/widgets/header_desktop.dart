import 'package:flutter/material.dart';
import '../../../../core/components/custom_text_button.dart';
import '../../../../core/components/scroll_to_index_method.dart';
import '../../../../core/constants/nav_items_list.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < navTitles.length; i++)
          CustomTextButton(
            title: navTitles[i],
            onPressed: () {
              scrollToIndex(i , controller);
            },
          )
      ],
    );
  }


}
