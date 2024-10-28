import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/components/show_snack_bar_widget.dart';
import 'package:portfolio/core/constants/constant.dart';
import 'package:portfolio/features/home/data/project_model.dart';
import '../../../../../core/utils/check_connectivity_service.dart';
part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit() : super(ProjectInitial());

  CollectionReference projects =
      FirebaseFirestore.instance.collection(kCollectionPath);

  Future<void> addNewProject({required ProjectModel projectModel}) async {
    try {
      await projects.add(
        {
          kId: projectModel.adminAccount,
          kAppName: projectModel.appName,
          kDescription: projectModel.description,
          kAmazonLink: projectModel.amazonUrl,
          kGoogleLink: projectModel.googleUrl,
          kImageUrl: projectModel.imgUrl,
          kCreateAt: projectModel.createAt,
        },
      );
    } catch (e) {
      emit(
        ProjectFailureState(errMessage: 'Failed, Please Try Again'),
      );
    }
  }

  void fetchAllProjects() {
    emit(ProjectLoadingState());
    try {
      projects.orderBy(kCreateAt).snapshots().listen(
        (event) {
          List<ProjectModel> projectsList = [];
          List<String> projectsId = [];

          for (var doc in event.docs) {
            projectsList.add(ProjectModel.fromjson(doc));
            projectsId.add(doc.id);
          }
          emit(
            ProjectSuccessState(
                projectList: projectsList, projectsId: projectsId),
          );
        },
      );
    } catch (e) {
      emit(
        ProjectFailureState(errMessage: 'Failed, Please Try Again'),
      );
    }
  }

  void deleteProject({required String projectId, required context}) async {
    try {
      bool isConnected = await ConnectionCheck.checkInternetConnection();

      if (isConnected == false) {
        emit(ProjectFailureState(errMessage: 'No Internet Connection'));
        return;
      }
      projects.doc(projectId).delete();
      showSnackBar(context, 'Project Deleted');
    } catch (e) {
      showSnackBar(context, 'Failed, Please try again');
    }
  }
}
