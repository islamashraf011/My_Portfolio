import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/project_model.dart';

class CustomProjectImageWidget extends StatelessWidget {
  const CustomProjectImageWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Image.asset(
        projectModel.imgUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
