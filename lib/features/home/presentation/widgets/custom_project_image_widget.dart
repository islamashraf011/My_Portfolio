import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../core/components/custom_cached_network_image_widget.dart';

class CustomProjectImageWidget extends StatelessWidget {
  const CustomProjectImageWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(projectModel.appName),
              ),
              body: Center(
                child: CustomCachedNetworkImage(
                  projectModel: projectModel,
                ),
              ),
            ),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 1.5 / 1,
        child: CustomCachedNetworkImage(
          projectModel: projectModel,
        ),
      ),
    );
  }
}
