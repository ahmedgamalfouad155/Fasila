import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeCategoryTypeWidget extends StatelessWidget {
  const HomeCategoryTypeWidget({
    super.key,
    required this.image,
    required this.title,
    this.bacgrouncColor,
    this.width,
    this.height,
  });

  final String image, title;
  final Color? bacgrouncColor;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { 
        context.go(AppRouter.kCategoryView);
      },
      child: Column(
        children: [
          Container(
            width: width ?? 80,
            height: height ?? 80,
            decoration: BoxDecoration(
              color: bacgrouncColor ?? context.appColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
                  offset: const Offset(-2, 4),
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: ClipRRect(
                child: CachedNetworkImage(imageUrl: image, height: 50),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: AppStyles.textStyle14(context).copyWith(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
