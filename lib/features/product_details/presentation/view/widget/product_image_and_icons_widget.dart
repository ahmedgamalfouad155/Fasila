import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/product_details/presentation/view/widget/share_and_favorite__product_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductImageAndIconsWidget extends StatelessWidget {
  const ProductImageAndIconsWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: context.appColors.white,
            boxShadow: [
              BoxShadow(
                color: context.appColors.grey,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: CachedNetworkImage(imageUrl: productModel.imageUrl),
        ),
        ShareAndFavoriteProductWidget(productModel: productModel),
      ],
    );
  }
}
