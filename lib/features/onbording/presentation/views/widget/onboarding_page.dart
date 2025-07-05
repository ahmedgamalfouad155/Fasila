import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  final int index;
  final String title;
  final String description;
  final String images;
  const OnboardingPage({
    super.key,
    required this.index,
    required this.title,
    required this.description,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset(images)),
          const SizedBox(height: 40),
          Text(title, style: AppStyles.textStyle24(context)),
          const SizedBox(height: 16),
          Text(
            description,
            style: AppStyles.textStyle12White(
              context,
            ).copyWith(color: context.appColors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
