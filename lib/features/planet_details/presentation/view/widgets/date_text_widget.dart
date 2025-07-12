import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DateTextWidget extends StatelessWidget {
  const DateTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Date: ', style: AppStyles.textStyle16Teal(context)),
        Text(
          'Feb 2025',
          style: AppStyles.textStyle14(
            context,
          ).copyWith(color: context.appColors.grey),
        ),
      ],
    );
  }
}
