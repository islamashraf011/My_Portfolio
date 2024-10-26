part of 'image_cubit.dart';

@immutable
sealed class ImageState {}

final class ImageInitial extends ImageState {}

final class ImagePickedSuccessState extends ImageState {
  final String imagePath;

  ImagePickedSuccessState({required this.imagePath});
}


final class ImageDownloadUrlSuccessState extends ImageState {
  final String downloadUrl;

  ImageDownloadUrlSuccessState({required this.downloadUrl});
}

final class ImageFailureState extends ImageState {
  final String errMessage;

  ImageFailureState({required this.errMessage});
}
