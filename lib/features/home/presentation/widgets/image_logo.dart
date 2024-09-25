import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  const ImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 4,
      child: Image.asset(
        "assets/images/bird.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
