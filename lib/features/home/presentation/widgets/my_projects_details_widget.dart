import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/add_project/presentation/manager/project_cubit/project_cubit.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_project_card_widget.dart';
import '../../../../core/components/show_snack_bar_widget.dart';
import '../../../../core/constants/nav_items_list.dart';
import '../../data/project_model.dart';
import 'add_new_project_button_widget.dart';

class MyProjectsDetailsWidget extends StatefulWidget {
  const MyProjectsDetailsWidget({super.key});

  @override
  State<MyProjectsDetailsWidget> createState() =>
      _MyProjectsDetailsWidgetState();
}

class _MyProjectsDetailsWidgetState extends State<MyProjectsDetailsWidget> {
  List<ProjectModel> myProjects = [];
  bool isLoading = false;
  @override
  void initState() {
    initFetchProjects();
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(ChangeMetrics(context));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectCubit, ProjectState>(
      listener: (context, state) {
        if (state is ProjectLoadingState) {
          isLoading = true;
        }
        if (state is ProjectSuccessState) {
          isLoading = false;
          myProjects = state.projectList;
        }
        if (state is ProjectFailureState) {
          showSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myProjects.length + 1,
          padding: EdgeInsets.symmetric(
              horizontal: checkIsMobileScreen() ? 75.w : 50.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: checkIsMobileScreen() ? 1 : 3,
            childAspectRatio: checkIsMobileScreen() ? 0.7 : (10.0 / 15.0).r,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 20.h,
          ),
          itemBuilder: (context, index) {
            if (index < myProjects.length) {
              return isLoading == true
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomProjectCardWidget(
                      projectModel: myProjects[index],
                    );
            } else {
              return const AddNewProjectButtonWidget();
            }
          },
        );
      },
    );
  }

// To Check is it Mobile or Desktop Screen.
  bool checkIsMobileScreen() => ScreenUtil().screenWidth <= kScreenWidth;

  void initFetchProjects() {
    BlocProvider.of<ProjectCubit>(context).fetchAllProjects();
    WidgetsBinding.instance.addObserver(
      ChangeMetrics(context),
    );
  }
}

// Handle Screen Resize in chrome Browser.
class ChangeMetrics extends WidgetsBindingObserver {
  final BuildContext context;

  ChangeMetrics(this.context);
  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    BlocProvider.of<ProjectCubit>(context).fetchAllProjects();
  }
}
