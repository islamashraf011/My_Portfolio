import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../features/home/data/project_model.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.projectModel,
  });

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: projectModel.imgUrl,
      fit: BoxFit.fill,
      fadeInCurve: Easing.linear,
      errorWidget: (context, url, error) => const Icon(
        Icons.warning_amber_outlined,
        size: 35,
        color: Colors.red,
      ),
    );
  }
}