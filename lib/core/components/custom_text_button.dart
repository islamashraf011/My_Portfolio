import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.height,
    this.width,
  });
  final String title;
  final Function()? onPressed;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        height: height,
        width: width,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(backgroundColor),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
