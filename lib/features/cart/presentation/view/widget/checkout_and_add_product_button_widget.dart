
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:flutter/material.dart';

class CheckoutAndAddProductButtonsWidget extends StatelessWidget {
  const CheckoutAndAddProductButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultButtonWidget(
          text: "Checkout",
          onPressed: () {},
          width: MediaQuery.of(context).size.width / 1.8,
          height: 50,
          borderRadius: BorderRadius.circular(10),
        ),
        DefaultButtonWidget(
          text: "Add Product",
          onPressed: () {},
          width: MediaQuery.of(context).size.width / 3,
          height: 50,
          borderRadius: BorderRadius.circular(10),
          bacgrouncColor: context.appColors.white,
          textColor: context.appColors.teal,
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
