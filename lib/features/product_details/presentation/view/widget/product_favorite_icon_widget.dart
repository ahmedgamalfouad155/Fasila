import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/features/product_details/presentation/manager/prouduct_favorite_cubit/product_favorite_cubit.dart';
import 'package:fasila/features/product_details/presentation/manager/prouduct_favorite_cubit/product_favorite_state.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductFavoriteIconWidget extends StatelessWidget {
  const ProductFavoriteIconWidget({
    super.key,
    required this.productModel,
    this.iconSize,
  });
  final ProductModel productModel;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductFavoriteCubit>();
    return BlocConsumer<ProductFavoriteCubit, ProductFavoriteState>(
      bloc: cubit,
      listener: (context, state) {
        if (state is ProuductFavoriteSuccessState) {
          customSnakBar(context, message: "Added To Favorite");
        } else if (state is DeleteProuductFromFavoriteSuccessState) {
          customSnakBar(context, message: "Deleted From Favorite");
        }
      },
      builder: (context, state) {
        if (state is ProuductFavoriteLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is ProuductFavoriteInitial ||
            state is ProuductFavoriteSuccessState ||
            state is DeleteProuductFromFavoriteSuccessState) {
          return InkWell(
            onTap: () {
              cubit.isProductFavorite(productModel.id)
                  ? cubit.deleteFromFavorite(productModel)
                  : cubit.addToFavorite(productModel);
            },
            child: Icon(
              cubit.isProductFavorite(productModel.id)
                  ? Icons.favorite
                  : Icons.favorite_border,
              size: iconSize ?? 15,
              color: context.appColors.teal,
            ),
          );
        } else if (state is ProuductFavoriteFailedState) {
          return Text(state.error);
        } else {
          return Text("error");
        }
      },
    );
  }
}
