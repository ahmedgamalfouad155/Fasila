import 'dart:io';
import 'package:fasila/core/constants/global_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
part 'image_profile_state.dart';

class ImageProfileCubit extends Cubit<ImageProfileState> {
  ImageProfileCubit() : super(ImageProfileInitial()) {
    loadImage();
  }

  final Box shopBox = Hive.box(hiveName);

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        final newImagePath = pickedFile.path;
        final oldImagePath = shopBox.get(profileImage);
        if (oldImagePath != null && File(oldImagePath).existsSync()) {
          await File(oldImagePath).delete();
        }
        await shopBox.put(profileImage, newImagePath);
        emit(ImageProfileUpdated(imagePath: newImagePath));
      } else {
        // print("User cancelled image picking.");
      }
    } catch (e) {
      // print("Error picking image: $e");
    }
  }

  void loadImage() {
    final imagePath = shopBox.get(profileImage);
    if (imagePath != null && File(imagePath).existsSync()) {
      emit(ImageProfileUpdated(imagePath: imagePath));
    } else {
      emit(ImageProfileInitial());
    }
  }

  void deleteImage() async {
    final imagePath = shopBox.get(profileImage);
    if (imagePath != null && File(imagePath).existsSync()) {
      await File(imagePath).delete();
    }
    await shopBox.delete(profileImage);
    emit(ImageProfileInitial());
  }
}
