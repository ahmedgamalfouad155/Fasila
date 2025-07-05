import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart'; 
part 'camera_state.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(CameraInitial()) {
    loadImage();
  }

  final Box shopBox = Hive.box('fasilaBox');

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final newImagePath = pickedFile.path;

      final oldImagePath = shopBox.get('cameraImage');
      if (oldImagePath != null && File(oldImagePath).existsSync()) {
        await File(oldImagePath).delete();
      }

      await shopBox.put('cameraImage', newImagePath);

      emit(CameraUpdated(imagePath: newImagePath));
    }
  }

  void loadImage() {
    final imagePath = shopBox.get('cameraImage');
    if (imagePath != null && File(imagePath).existsSync()) {
      emit(CameraUpdated(imagePath: imagePath));
    } else {
      emit(CameraInitial());
    }
  }

  void deleteImage() async {
    final imagePath = shopBox.get('cameraImage');
    if (imagePath != null && File(imagePath).existsSync()) {
      await File(imagePath).delete();
    }

    await shopBox.delete('cameraImage');
    emit(CameraInitial());
  }
}
