import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ScaneImageWidget extends StatelessWidget {
  const ScaneImageWidget({super.key, required this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: context.appColors.offWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: context.appColors.white,
                  border: Border.all(color: context.appColors.teal, width: 1),
                ),
                padding: const EdgeInsets.all(12),
                child: imagePath != null
                    ? Image.file(
                        File(imagePath!),
                        height: MediaQuery.of(context).size.height / 3,
                      )
                    : Image.asset(AppImages.logoImage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
