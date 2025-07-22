import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/features/product_details/data/models/favorit_product_model.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_cubit.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_state.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductFavoriteIconWidget extends StatelessWidget {
  const ProductFavoriteIconWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddToFavoriteCubit>();
    return BlocConsumer<AddToFavoriteCubit, AddToFavoriteState>(
      bloc: cubit,
      listener: (context, state) {
        if (state is AddToFavoriteSuccessState) {
          customSnakBar(context, message: "Added To Favorite");
        } else if (state is DeleteFromFavoriteSuccessState) {
          customSnakBar(context, message: "Deleted From Favorite");
        }
      },
      builder: (context, state) {
        if (state is AddToFavoriteLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AddToFavoriteInitial ||
            state is AddToFavoriteSuccessState ||
            state is DeleteFromFavoriteSuccessState) {
          return InkWell(
            onTap: () {
              print(cubit.isFavorite);
              cubit.isFavorite
                  ? cubit.deleteFromFavorite(
                      FavoriteProductModel(
                        productModel: productModel,
                        type: 'product',
                      ),
                    )
                  :
                   cubit.addToFavorite(
                      FavoriteProductModel(
                        productModel: productModel,
                        type: 'product',
                      ),
                    );
            },
            child: Icon(
              cubit.isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 15,
              color: context.appColors.teal,
            ),
          );
        } else if (state is AddToFavoriteFailedState) {
          print(state.error);
          return Text(state.error);
        } else {
          return Text("");
        }
      },
    );
  }
}
