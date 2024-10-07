import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/hint_text_list.dart';
import '../../../../core/components/custom_text_form_field_widget.dart';
import 'add_action_button_widget.dart';
import 'add_new_project_app_bar.dart';

class AddNewProjectViewBody extends StatefulWidget {
  const AddNewProjectViewBody({super.key});

  @override
  State<AddNewProjectViewBody> createState() => _AddNewProjectViewBodyState();
}

class _AddNewProjectViewBodyState extends State<AddNewProjectViewBody> {
  late List<TextEditingController> textController;
  @override
  void initState() {
    generateListTextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    disposeTextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          const AddNewProjectAppBar(),
          for (int i = 0; i < hintText.length; i++)
            CustomTextFormFieldWidget(
              controller: textController[i],
              hintText: hintText[i],
              clearText: () {
                textController.clear();
              },
            ),
          SizedBox(
            height: 15.h,
          ),
          const AddActionButtonWidget(),
        ],
      ),
    );
  }

  void generateListTextEditingController() {
    textController = List.generate(
      hintText.length,
      (index) => TextEditingController(),
    );
  }

  void disposeTextEditingController() {
    for (var controller in textController) {
      controller.dispose();
    }
  }
}



