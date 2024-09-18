  import 'package:flutter/material.dart';

void scrollToIndex(int index , PageController controller) {
    double offset = 0.0;

    // Calculate the offset based on the index of the section
    switch (index) {
      case 1:
        offset = 600.0; // Adjust the offset for the About Me section
        break;
      case 2:
        offset = 900.0; // Adjust the offset for the My Skills section
        break;
      case 3:
        offset = 1200.0; // Adjust the offset for the My Projects section
        break;
      default:
        break;
    }

    controller.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }