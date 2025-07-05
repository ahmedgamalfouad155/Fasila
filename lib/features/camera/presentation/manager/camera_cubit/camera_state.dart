part of 'camera_cubit.dart';

abstract class CameraState {}

class CameraInitial extends CameraState {}

class CameraUpdated extends CameraState {
  final String imagePath;

  CameraUpdated({required this.imagePath});
}
