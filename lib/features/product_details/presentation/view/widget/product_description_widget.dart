import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Carden Hand Trowel", style: AppStyles.textStyle16Teal(context)),
          Text(
            "Egp 220.00",
            style: AppStyles.textStyle14(
              context,
            ).copyWith(color: context.appColors.teal),
          ),
          Text(
            "Lightweight Hand Trowel for scooping the soil and making your gardening activities easier and more fun, made from durable and strong carbon steel.",
            style: AppStyles.textStyle14(context),
          ),
          Row(
            children: [
              Text(
                "length: ",
                style: AppStyles.textStyle14(context).copyWith(
                  color: context.appColors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("340 mm", style: AppStyles.textStyle14(context)),
            ],
          ),
        ],
      ),
    );
  }
}
