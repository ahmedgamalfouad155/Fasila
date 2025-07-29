import 'dart:io';

import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/features/profile/presentation/manager/image_profile_cubit/image_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageProfileCubit, ImageProfileState>(
      builder: (context, state) {
        String? imagePath;
        if (state is ImageProfileUpdated) {
          imagePath = state.imagePath;
        }
        return Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: CustomsBoxDecoration().circleBoxDecoration(context),
              child: imagePath != null
                  ? ClipOval(
                      child: Image.file(File(imagePath), fit: BoxFit.cover),
                    )
                  : Icon(Icons.person, color: context.appColors.teal, size: 70),
            ),

            Positioned(
              bottom: 5,
              right: 5,
              child: InkWell(
                onTap: () {
                  context.read<ImageProfileCubit>().pickImageFromGallery();
                },
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: CustomsBoxDecoration().circleBoxDecoration(
                    context,
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    size: 13,
                    color: context.appColors.teal,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
