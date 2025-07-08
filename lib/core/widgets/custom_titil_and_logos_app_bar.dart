import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

AppBar customTitleAndLogoosAppBar({
  required String title,
  required BuildContext context,
}) {
  return AppBar(
    iconTheme: IconThemeData(color: context.appColors.teal),
    title: Text(
      title,
      style: AppStyles.textStyle16Teal(
        context,
      ).copyWith(fontWeight: FontWeight.bold),
    ),
    actions: [NotificationAndCartIconsWidget()],
  );
}
