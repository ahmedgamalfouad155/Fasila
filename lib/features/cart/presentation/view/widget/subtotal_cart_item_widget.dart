import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/view/widget/subtotal_option_content_widget.dart';
import 'package:flutter/material.dart';

class SubtotalCartItemsWidget extends StatelessWidget {
  const SubtotalCartItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        color: context.appColors.offWhite,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
            offset: const Offset(-2, 4),
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Subtotal(3 Items)', style: AppStyles.textStyle16Teal(context)),
          SubtotalOptionContentWidget(title: 'Products ', price: 'EGP 550.00'),
          SubtotalOptionContentWidget(title: 'Delivery ', price: 'EGP 50.00'),
          Divider(color: context.appColors.teal, thickness: 1, height: 1),
          SubtotalOptionContentWidget(title: 'Total ', price: 'EGP 600.00'),
        ],
      ),
    );
  }
}
