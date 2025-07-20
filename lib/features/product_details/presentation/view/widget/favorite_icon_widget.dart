import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_cubit.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_state.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteIconWidget extends StatelessWidget {
  const FavoriteIconWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddToFavoriteCubit>();
    return BlocBuilder<AddToFavoriteCubit, AddToFavoriteState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            cubit.isFavorite
                ? cubit.deleteFromFavorite(productModel)
                : cubit.addToFavorite(productModel);
            print(cubit.isFavorite);
          },
          child: Icon(
            cubit.isFavorite ? Icons.favorite : Icons.favorite_border,
            size: 15,
            color: context.appColors.teal,
          ),
        );
      },
    );
  }
}
