import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/components/custom_text_button.dart';
import 'package:portfolio/core/constants/hint_text_list.dart';
import '../../../../core/components/custom_text_form_field_widget.dart';
import 'add_new_project_app_bar.dart';

class AddNewProjectViewBody extends StatelessWidget {
  const AddNewProjectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const AddNewProjectAppBar(),
        for (int i = 0; i < hintText.length; i++)
          CustomTextFormFieldWidget(
            hintText: hintText[i],
          ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: CustomTextButton(
            title: 'Add',
            backgroundColor: Colors.green[900],
            height: 40.h,
            width: 100.w,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
