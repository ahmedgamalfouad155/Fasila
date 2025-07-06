
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class WeeksWidget extends StatelessWidget {
  const WeeksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '(First Week)',
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: context.appColors.teal,
          size: 20,
        ),
      ],
    );
  }
}
