import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/view/widget/subtotal_option_content_widget.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:fasila/generated/l10n.dart';
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
      decoration: CustomsBoxDecoration().defaultBoxDecoration(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${S.of(context).subTotal}(${proucts.length} ${S.of(context).items})',
            style: AppStyles.textStyle16Teal(context),
          ),
          SubtotalOptionContentWidget(
            title: S.of(context).products,
            price: '${totalP.toDouble()} ${S.of(context).egp}',
          ),
          SubtotalOptionContentWidget(
            title: S.of(context).delivery,
            price: '50.0 ${S.of(context).egp}',
          ),
          Divider(color: context.appColors.teal, thickness: 1, height: 1),
          SubtotalOptionContentWidget(
            title: S.of(context).total,
            price: '${(totalP + 50.toDouble())} ${S.of(context).egp}',
          ),
        ],
      ),
    );
  }
}
