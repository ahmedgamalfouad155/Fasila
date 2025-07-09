
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:flutter/material.dart';

class AddToCartButtonAndQtyWidget extends StatelessWidget {
  const AddToCartButtonAndQtyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButon(
          text: "Add To Card",
          onPressed: () {},
          width: MediaQuery.of(context).size.width / 1.4,
        ),
        const SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: context.appColors.teal, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("QTY", style: AppStyles.textStyle16Teal(context)),
              Text("1", style: AppStyles.textStyle16Teal(context)),
            ],
          ),
        ),
      ],
    );
  }
}
