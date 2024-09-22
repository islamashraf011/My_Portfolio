import 'package:flutter/material.dart';
import '../widgets/add_new_project_view_body.dart';

class AddNewProjectView extends StatelessWidget {
  const AddNewProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AddNewProjectViewBody(),
      ),
    );
  }
}
