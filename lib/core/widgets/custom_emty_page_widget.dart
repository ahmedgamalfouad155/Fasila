import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomEmptyPage extends StatelessWidget {
  const CustomEmptyPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: Image.asset(image),
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: AppStyles.textStyle20(context).copyWith(
            fontWeight: FontWeight.bold,
            color: context.appColors.teal,
          ),
        ),
        const SizedBox(height: 5),
        Text(subTitle, style: AppStyles.textStyle16Teal(context)),
      ],
    );
  }
}
