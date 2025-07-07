import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:flutter/material.dart';

class ImagePlanetDetailsWidget extends StatelessWidget {
  const ImagePlanetDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(imageUrl: AppImages.myPlanet1Image),
    );
  }
}
