
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CheckBenefitsUpgradeWidget extends StatelessWidget {
  const CheckBenefitsUpgradeWidget({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check, color: context.appColors.teal),
        const SizedBox(width: 15),
        Text(
          title,
          style: AppStyles.textStyle14(
            context,
          ).copyWith(color: context.appColors.grey),
        ),
      ],
    );
  }
}
