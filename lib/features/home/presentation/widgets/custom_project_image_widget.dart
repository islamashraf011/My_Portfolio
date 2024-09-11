import 'package:flutter/material.dart';

class CustomProjectImageWidget extends StatelessWidget {
  const CustomProjectImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/test.jpeg',
      height: 150,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}