import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../core/constants/constant.dart';
import 'custom_project_image_widget.dart';
import 'custom_project_link_widget.dart';
import 'custom_project_name_widget.dart';

class CustomProjectCardWidget extends StatelessWidget {
  const CustomProjectCardWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kProjectCardDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomProjectImageWidget(
            projectModel: projectModel,
          ),
          CustomProjectNameWidget(
            projectModel: projectModel,
          ),
          const Spacer(),
          CustomProjectLinkWidget(
            projectModel: projectModel,
          ),
        ],
      ),
    );
  }
}
