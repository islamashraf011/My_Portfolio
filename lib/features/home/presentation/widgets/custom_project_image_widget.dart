import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/project_model.dart';

class CustomProjectImageWidget extends StatelessWidget {
  const CustomProjectImageWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: CachedNetworkImage(
        imageUrl: projectModel.imgUrl,
        fit: BoxFit.fill,
        fadeInCurve: Easing.linear,
        errorWidget: (context, url, error) => const Icon(
          Icons.warning_amber_outlined,
          size: 35,
          color: Colors.red,
        ),
      ),
    );
  }
}
