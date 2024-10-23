import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/constants/constant.dart';
import 'package:portfolio/features/home/data/project_model.dart';
part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit() : super(ProjectInitial());

  CollectionReference projects =
      FirebaseFirestore.instance.collection(kCollectionPath);

  Future<void> addNewProject({required ProjectModel projectModel}) async {
    try {
      await projects.add(
        {
          kId: projectModel.id,
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

          for (var doc in event.docs) {
            projectsList.add(ProjectModel.fromjson(doc));
          }
          emit(
            ProjectSuccessState(projectList: projectsList),
          );
        },
      );
    } catch (e) {
      emit(
        ProjectFailureState(errMessage: 'Failed, Please Try Again'),
      );
    }
  }
}
