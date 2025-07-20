import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/decoration.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/view/widget/delete_and_favorite_and_quantity_section.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, required this.prouct});
  final SaveProductModel prouct;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: defaultBoxDecoration(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              CachedNetworkImage(imageUrl: prouct.imageUrl, width: 70),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      prouct.name,
                      style: AppStyles.textStyle16Teal(context),
                    ),

                    Text(
                      prouct.discription,
                      style: AppStyles.textStyle12Grey(context),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${prouct.totalPrice.toDouble()} EGP",
                          style: AppStyles.textStyle16Teal(
                            context,
                          ).copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quantity: ${prouct.quantity.toInt()}",
                          style: AppStyles.textStyle16Teal(
                            context,
                          ).copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          DeleteAndFavoriteAndQuantityButtonSection(product: prouct),
        ],
      ),
    );
  }
}
