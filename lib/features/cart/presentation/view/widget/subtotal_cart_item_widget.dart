import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/decoration.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/view/widget/subtotal_option_content_widget.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:flutter/material.dart';

class SubtotalCartItemsWidget extends StatelessWidget {
  const SubtotalCartItemsWidget({super.key, required this.proucts});

  final List<SaveProductModel> proucts;

  @override
  Widget build(BuildContext context) {
    num totalP = 0;
    for (var element in proucts) {
      totalP = totalP + element.totalPrice;
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: defaultBoxDecoration(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subtotal(${proucts.length} Items)',
            style: AppStyles.textStyle16Teal(context),
          ),
          SubtotalOptionContentWidget(
            title: 'Products ',
            price: '$totalP.00 EGP',
          ),
          SubtotalOptionContentWidget(title: 'Delivery ', price: '50.00 EGP'),
          Divider(color: context.appColors.teal, thickness: 1, height: 1),
          SubtotalOptionContentWidget(
            title: 'Total ',
            price: '${totalP + 50}.00 EGP',
          ),
        ],
      ),
    );
  }
}
