import 'package:fasila/core/theme/decoration.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_description_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_image_and_icons_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ImageAndDescriptionDetailsWidget extends StatelessWidget {
  const ImageAndDescriptionDetailsWidget({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: defaultBoxDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImageAndIconsWidget(productModel: productModel),
          const SizedBox(height: 20),
          ProductDescriptionWidget(productModel: productModel),
        ],
      ),
    );
  }
}
