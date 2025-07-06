import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

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
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.appColors.white,
                      border: Border.all(
                        color: context.appColors.teal,
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      AppImages.logoImage,
                      fit: BoxFit.contain,
                    ),
                  ),

                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: context.appColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: context.appColors.teal,
                          width: 1,
                        ),
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 13,
                        color: context.appColors.teal,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'John Doe',
                    style: AppStyles.textStyle16Teal(
                      context,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.edit_outlined,
                    color: context.appColors.teal,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
