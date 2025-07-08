import 'package:fasila/core/widgets/custom_serch_widget.dart';
import 'package:flutter/material.dart';

AppBar customSearchAppBar({
  required String title,
  required BuildContext context,
  bool arrowBack = true,
}) {
  return AppBar(title: CustomSearchWidget());
}
