import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/custom_text_form_field_widget.dart';
import '../../../../core/components/show_snack_bar_widget.dart';
import '../../../../core/constants/hint_text_list.dart';
import '../../../add_project/presentation/manager/login_cubit/login_cubit.dart';
import '../../../add_project/presentation/manager/project_cubit/project_cubit.dart';
import '../../../add_project/presentation/widgets/add_action_button_widget.dart';

class CheckLoginProcessViewBody extends StatelessWidget {
  const CheckLoginProcessViewBody({super.key, this.projectId});
  final String? projectId;
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
          IconButton(
            // alignment: Alignment.topLeft,
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.clear),
          ),
          for (int i = 0; i < loginText.length; i++)
            CustomTextFormFieldWidget(
              controller: textController[i],
              hintText: loginText[i],
              isPassword: i == 1 ? true : false,
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
                BlocProvider.of<ProjectCubit>(context).deleteProject(
                  projectId: projectId!,
                  context: context,
                );
                handleLoginSuccessState(context, textController);
              } else if (state is LoginFailureState) {
                showSnackBar(context, state.errMessage);
                isLoading = false;
              }
            },
            builder: (context, state) {
              return AddActionButtonWidget(
                text: 'Login',
                isLoading: isLoading,
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<LoginCubit>(context).loginProcess(
                        email: textController[0].text,
                        password: textController[1].text);
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
    context.pop();
    for (var controller in textController) {
      controller.clear();
    }
  }

  List<TextEditingController> generateListTextEditingController() {
    return List.generate(
      loginText.length,
      (index) => TextEditingController(),
    );
  }
}
