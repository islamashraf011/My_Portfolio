import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/components/show_snack_bar_widget.dart';
import 'package:portfolio/core/constants/hint_text_list.dart';
import 'package:portfolio/features/add_project/presentation/manager/login_cubit/login_cubit.dart';
import 'package:portfolio/features/add_project/presentation/manager/project_cubit/project_cubit.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../core/components/custom_text_form_field_widget.dart';
import 'add_action_button_widget.dart';
import 'add_new_project_app_bar.dart';

class AddNewProjectViewBody extends StatelessWidget {
  const AddNewProjectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> textController =
        generateListTextEditingController();
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
                isLoading = false;
                handleLoginSuccessState(context, textController);
              } else if (state is LoginFailureState) {
                showSnackBar(context, state.errMessage);
                isLoading = false;
              }
            },
            builder: (context, state) {
              return AddActionButtonWidget(
                text: 'Add',
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

  void handleLoginSuccessState(
      BuildContext context, List<TextEditingController> textController) {
    BlocProvider.of<ProjectCubit>(context).addNewProject(
      projectModel: ProjectModel(
        appName: textController[0].text,
        description: textController[1].text,
        imgUrl: textController[2].text,
        amazonUrl: textController[3].text,
        googleUrl: textController[4].text,
        adminAccount: textController[5].text,
        createAt: DateTime.now().toString(),
      ),
    );

    showSnackBar(context, 'Success');
    context.pop();
    for (var controller in textController) {
      controller.clear();
    }
  }

  List<TextEditingController> generateListTextEditingController() {
    return List.generate(
      hintText.length,
      (index) => TextEditingController(),
    );
  }
}
