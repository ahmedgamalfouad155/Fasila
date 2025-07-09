import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_serch_widget.dart';
import 'package:flutter/material.dart';

AppBar customSearchAppBar({
  required BuildContext context,
  bool arrowBack = true,
}) {
  return AppBar(
    iconTheme: IconThemeData(color: context.appColors.teal),
    title: CustomSearchWidget(),
  );
}
