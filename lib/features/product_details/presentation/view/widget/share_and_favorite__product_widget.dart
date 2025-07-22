import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/product_details/presentation/manager/prouduct_favorite_cubit/product_favorite_cubit.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_favorite_icon_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareAndFavoriteProductWidget extends StatelessWidget {
  const ShareAndFavoriteProductWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: Column(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: context.appColors.offWhite,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(Icons.share, color: context.appColors.teal, size: 15),
          ),
          const SizedBox(height: 10),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: context.appColors.offWhite,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: BlocProvider(
              create: (context) => ProductFavoriteCubit(),
              child: ProductFavoriteIconWidget(productModel: productModel),
            ),
          ),
        ],
      ),
    );
  }
}
