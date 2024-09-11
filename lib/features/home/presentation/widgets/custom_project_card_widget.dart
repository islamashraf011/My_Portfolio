import 'package:flutter/material.dart';

import '../../../../core/constants/constant.dart';
import 'custom_project_image_widget.dart';
import 'custom_project_link_widget.dart';
import 'custom_project_name_widget.dart';

class CustomProjectCardWidget extends StatelessWidget {
  const CustomProjectCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      // width: 250,
      decoration: kProjectCardDecoration,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomProjectImageWidget(),
          CustomProjectNameWidget(),
          Spacer(),
          CustomProjectLinkWidget(),
        ],
      ),
    );
  }
}
