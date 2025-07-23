import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';

BoxDecoration defaultBoxDecoration(
  BuildContext context, {
  bool border = false,
  Color? color,
}) {
  return BoxDecoration(
    color: color ?? context.appColors.offWhite,
    borderRadius: BorderRadius.all(Radius.circular(16)),
    border: border ? Border.all(color: context.appColors.teal, width: 1) : null,
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
