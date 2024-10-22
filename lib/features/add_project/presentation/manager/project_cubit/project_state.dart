part of 'project_cubit.dart';

@immutable
sealed class ProjectState {}

final class ProjectInitial extends ProjectState {}

final class ProjectLoadingState extends ProjectState {}

final class ProjectSuccessState extends ProjectState {}

final class ProjectFailureState extends ProjectState {
  final String errMessage;

  ProjectFailureState({required this.errMessage});
}
