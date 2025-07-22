
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PlanetNameTextWidget extends StatelessWidget {
  const PlanetNameTextWidget({super.key, required this.plantName});

  final String plantName;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
          plantName,
          style: AppStyles.textStyle14(context).copyWith(
            color: context.appColors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
