import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageInitial());
  ImagePicker imagePicker = ImagePicker();
  // Get Reference to Storage Root
  Reference storageReference = FirebaseStorage.instance.ref().child('images');

  String? pickedImagePath;
  Future<void> pickImage() async {
    try {
      XFile? image = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (image != null) {
        pickedImagePath = image.path;
        emit(
          ImagePickedSuccessState(imagePath: pickedImagePath!),
        );
      } else {
        emit(
          ImageFailureState(errMessage: 'Not Selected Image'),
        );
      }
    } catch (e) {
      emit(
        ImageFailureState(errMessage: 'Failed, please try again'),
      );
    }
  }

  Future<void> uploadImageToStorage() async {
    // Create a reference for the image to be stored with unique Name
    // Store the image in Storage

    try {
      String uniqueImageName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference referenceImageToUpload =
          storageReference.child(uniqueImageName);
      await referenceImageToUpload.putFile(
        File(pickedImagePath!),
      );

      // Retrieve the download URL of the uploaded image

      String imageDownloadUrl = await referenceImageToUpload.getDownloadURL();
      emit(
        ImageDownloadUrlSuccessState(downloadUrl: imageDownloadUrl),
      );
    } catch (e) {
      emit(
        ImageFailureState(errMessage: 'Failed to upload image'),
      );
    }
  }
}







      //   imageUrl = await referenceImageToUpload.getDownloadURL();

      //   emit(ImageDownloadUrlSuccessState(downloadUrl: imageUrl));
      //   log('testtsettest$imageUrl');
      // } catch (e) {
      //   emit(ImageFailureState(errMessage: e.toString()));
      // }