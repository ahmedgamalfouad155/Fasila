import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/product_details/presentation/view/widget/share_and_favorite_widget.dart';
import 'package:flutter/material.dart';

class ImagePlanetDetailsWidget extends StatelessWidget {
  const ImagePlanetDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: context.appColors.white,
            boxShadow: [
              BoxShadow(
                color: context.appColors.grey,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(imageUrl: AppImages.myPlanetFruit1Image),
          ),
        ),
        ShareAndFavoriteWidget(icon: Icons.more_vert),
        Positioned(
          left: 10,
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: context.appColors.teal, width: 1),
            ),
            child: Text(
              "Tomato",
              style: AppStyles.textStyle14(context).copyWith(
                color: context.appColors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
