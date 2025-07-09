import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_description_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_image_and_icons_widget.dart';
import 'package:flutter/material.dart';

class ImageAndDescriptionDetailsWidget extends StatelessWidget {
  const ImageAndDescriptionDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite,
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProductImageAndIconsWidget(),
          const SizedBox(height: 20),
          ProductDescriptionWidget(),
        ],
      ),
    );
  }
}
