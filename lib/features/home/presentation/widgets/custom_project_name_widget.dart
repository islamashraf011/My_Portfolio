import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomProjectNameWidget extends StatelessWidget {
  const CustomProjectNameWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        projectModel.title,
        style: AppTextStyles.textNormalColor16(),
      ),
      subtitle: Text(
        style: TextStyle(fontSize: 14.r, height: 1.5),
        maxLines: 2,
        textAlign: TextAlign.justify,
        projectModel.description,
      ),
    );
  }
}
