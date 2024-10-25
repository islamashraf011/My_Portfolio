import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../core/constants/constant.dart';
import '../views/check_login_process_view.dart';
import 'custom_project_image_widget.dart';
import 'custom_project_link_widget.dart';
import 'custom_project_name_widget.dart';

class CustomProjectCardWidget extends StatelessWidget {
  const CustomProjectCardWidget(
      {super.key, required this.projectModel, required this.projectId});
  final ProjectModel projectModel;
  final String? projectId;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
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
        ),
        Positioned(
          child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  // to Show SnackBar on the Dialog i Should wrap it by Scaffold
                  return Scaffold(
                    backgroundColor: Colors.transparent,
                    body: CheckLoginProcessView(
                      projectId: projectId,
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.delete_outline_rounded,
            ),
          ),
        ),
      ],
    );
  }
}
