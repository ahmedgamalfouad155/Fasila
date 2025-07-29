part of 'image_profile_cubit.dart';

abstract class ImageProfileState {}

class ImageProfileInitial extends ImageProfileState {}

class ImageProfileUpdated extends ImageProfileState {
  final String imagePath;

  ImageProfileUpdated({required this.imagePath});
}
