import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomsBoxDecoration {
  BoxDecoration defaultBoxDecoration(
    BuildContext context, {
    bool border = false,
    Color? color,
  }) {
    return BoxDecoration(
      color: color ?? context.appColors.offWhite,
      borderRadius: BorderRadius.all(Radius.circular(16)),
      border: border
          ? Border.all(color: context.appColors.teal, width: 1)
          : null,
      boxShadow: [
        BoxShadow(
          color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
          offset: const Offset(-2, 4),
          blurRadius: 6,
          spreadRadius: 1,
        ),
      ],
    );
  }

  BoxDecoration customFiltersBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.appColors.white,
      boxShadow: [
        BoxShadow(
          color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
          blurRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  BoxDecoration alarmBoxDecoration(BuildContext context) {
    return BoxDecoration(
      shape: BoxShape.rectangle,
      color: context.appColors.white,
      border: Border.all(color: context.appColors.teal, width: 1),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
