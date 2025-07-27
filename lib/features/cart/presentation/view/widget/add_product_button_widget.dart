
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddProductButtonWidget extends StatelessWidget {
  const AddProductButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultButtonWidget(
      text: "Add Product",
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kShopView);
      },
      width: MediaQuery.of(context).size.width / 3,
      height: 50,
      borderRadius: BorderRadius.circular(10),
      bacgrouncColor: context.appColors.white,
      textColor: context.appColors.teal,
      style: AppStyles.textStyle16Teal(
        context,
      ).copyWith(fontWeight: FontWeight.bold),
    );
  }
}
