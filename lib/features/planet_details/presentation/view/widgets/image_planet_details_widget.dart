import 'package:fasila/core/constants/images.dart';
import 'package:flutter/material.dart';

class ImagePlanetDetailsWidget extends StatelessWidget {
  const ImagePlanetDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        AppImages.tomatoImage,
        // fit: BoxFit.cover,
        // width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
