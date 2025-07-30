import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(productModel.name, style: AppStyles.textStyle16Teal(context)),
        const SizedBox(height: 5),
        Text(
          "Price: ${productModel.price}.00 Egp",
          style: AppStyles.textStyle14(context).copyWith(
            color: context.appColors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          productModel.discription,
          style: AppStyles.textStyle14(context),
        ),
      ],
    );
  }
}
