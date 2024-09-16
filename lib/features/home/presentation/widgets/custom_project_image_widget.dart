import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/project_model.dart';

class CustomProjectImageWidget extends StatelessWidget {
  const CustomProjectImageWidget({super.key, required this.projectModel});
 final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      projectModel.imgUrl,
      height: 150,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
