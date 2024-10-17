import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/components/show_snack_bar_widget.dart';
import 'package:portfolio/core/constants/hint_text_list.dart';
import 'package:portfolio/features/add_project/presentation/manager/login_cubit/login_cubit.dart';
import '../../../../core/components/custom_text_form_field_widget.dart';
import 'add_action_button_widget.dart';
import 'add_new_project_app_bar.dart';

class AddNewProjectViewBody extends StatelessWidget {
  const AddNewProjectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> textController = generateListTextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();
    bool isLoading = false;

    return Form(
      key: formKey,
      child: ListView(
        children: [
          const AddNewProjectAppBar(),
          for (int i = 0; i < hintText.length; i++)
            CustomTextFormFieldWidget(
              controller: textController[i],
              hintText: hintText[i],
              isPassword: i == 6 ? true : false,
              index: i,
              clearText: () {
                textController[i].clear();
              },
            ),
          SizedBox(
            height: 15.h,
          ),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginLoadingState) {
                isLoading = true;
              } else if (state is LoginSuccessState) {
                showSnackBar(context, 'Success');
                isLoading = false;
                for (var controller in textController) {
                  controller.clear();
                }
              } else if (state is LoginFailureState) {
                showSnackBar(context, state.errMessage);
                isLoading = false;
              }
            },
            builder: (context, state) {
              return AddActionButtonWidget(
                isLoading: isLoading,
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<LoginCubit>(context).loginProcess(
                        email: textController[5].text,
                        password: textController[6].text);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  List<TextEditingController> generateListTextEditingController() {
    return List.generate(
    hintText.length,
    (index) => TextEditingController(),
  );
  }
}
