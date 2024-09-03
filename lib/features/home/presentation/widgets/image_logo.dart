import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  const ImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Image.asset(
        "assets/images/bird.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
