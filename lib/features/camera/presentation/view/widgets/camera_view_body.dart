import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/camera/presentation/manager/camera_cubit/camera_cubit.dart';
import 'package:fasila/features/camera/presentation/view/widgets/content_scane_widget.dart';
import 'package:fasila/features/camera/presentation/view/widgets/scane_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraViewBody extends StatelessWidget {
  const CameraViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraCubit, CameraState>(
      builder: (context, state) {
        String? imagePath;
        if (state is CameraUpdated) {
          imagePath = state.imagePath;
        }
        
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ScaneImageWidget(imagePath: imagePath),
              const SizedBox(height: 20),
              imagePath != null
                  ? ContentScaneWidget(imagePath: imagePath)
                  : const SizedBox(),
              const SizedBox(height: 20),
              CustomButon(
                text: "Take a picture",
                onPressed: () {
                  context.read<CameraCubit>().pickImageFromGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
