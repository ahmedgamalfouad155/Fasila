
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductImageAndIconsWidget extends StatelessWidget {
  const ProductImageAndIconsWidget({
    super.key,
  });

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
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: CachedNetworkImage(imageUrl: AppImages.lastest1Image),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Column(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: context.appColors.offWhite,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: context.appColors.grey,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.share,
                  color: context.appColors.teal,
                  size: 15,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: context.appColors.offWhite,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: context.appColors.grey,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.favorite_border,
                  size: 15,
                  color: context.appColors.teal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
