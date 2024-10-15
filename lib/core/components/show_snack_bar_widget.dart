import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

showSnackBar(context, String message) {
  final scaffoldContext = ScaffoldMessenger.maybeOf(context);
  if (scaffoldContext != null) {
    scaffoldContext.showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        content: Center(
          child: Text(
            message,
            style: AppTextStyles.textNormalColor16(),
          ),
        ),
      ),
    );
  }
}
