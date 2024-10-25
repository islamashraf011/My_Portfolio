import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/add_project/presentation/manager/project_cubit/project_cubit.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../core/constants/constant.dart';
import 'custom_project_image_widget.dart';
import 'custom_project_link_widget.dart';
import 'custom_project_name_widget.dart';

class CustomProjectCardWidget extends StatelessWidget {
  const CustomProjectCardWidget({super.key, required this.projectModel, required this.projectId});
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
              BlocProvider.of<ProjectCubit>(context).deleteProject(
                projectId: projectId!,
                context: context,
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
