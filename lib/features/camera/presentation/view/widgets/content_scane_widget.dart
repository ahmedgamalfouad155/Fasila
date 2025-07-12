import 'dart:io';

import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentScaneWidget extends StatelessWidget {
  const ContentScaneWidget({super.key, this.imagePath});
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite,
        border: Border.all(color: context.appColors.teal, width: 1),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          imagePath != null
              ? Image.file(File(imagePath!), height: 70)
              : Image.asset(AppImages.logoImage),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'tomato leaves',
                  style: AppStyles.textStyle16Teal(
                    context,
                  ).copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'The Tobacco Mosaic Virus (TMV) is a highly contagious disease affecting tomato plants.......',
                  style: AppStyles.textStyle12Grey(context),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kScaneResultView);
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: context.appColors.teal,
              child: Icon(
                Icons.arrow_forward,
                color: context.appColors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
