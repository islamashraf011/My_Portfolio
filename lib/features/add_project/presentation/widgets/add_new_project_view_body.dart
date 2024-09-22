import 'package:flutter/material.dart';
import 'add_new_project_app_bar.dart';

class AddNewProjectViewBody extends StatelessWidget {
  const AddNewProjectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AddNewProjectAppBar(),
      ],
    );
  }
}