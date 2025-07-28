import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWithTextWidget extends StatelessWidget {
  const DividerWithTextWidget({
    super.key,
    this.text ,
    this.dividerColor,
    this.textStyle,
    this.dividerThickness = 1.0,
    this.spacing = 16.0,
  });

  final String? text;
  final Color? dividerColor;
  final TextStyle? textStyle;
  final double dividerThickness;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: dividerColor ?? context.appColors.teal,
            thickness: dividerThickness,
            height: 1,
          ),
        ),

        SizedBox(width: spacing.w),

        Text(text!, style: textStyle ?? AppStyles.textStyle16Teal(context)),

        SizedBox(width: spacing.w),

        Expanded(
          child: Divider(
            color: dividerColor ?? context.appColors.teal,
            thickness: dividerThickness,
            height: 1,
          ),
        ),
      ],
    );
  }
}
