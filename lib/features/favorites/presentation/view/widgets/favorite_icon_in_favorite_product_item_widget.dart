import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/favorites/presentation/manager/favorite_product_cubit/favorire_product_cubit.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteIconInFavoriteProductItemWidget extends StatelessWidget {
  const FavoriteIconInFavoriteProductItemWidget({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavorireProductCubit>();
    return BlocBuilder<FavorireProductCubit, FavorireProductState>(
      bloc: cubit,
      builder: (context, state) {
        if (state is FavorireProductLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is FavorireProductFailedState) {
          return Text(state.error);
        } else if (state is FavorireProductInitial ||
            state is FavorireProductSuccessState) {
          return InkWell(
            onTap: () {
              cubit.deleteFromFavorite(product);
            },
            child: Icon(Icons.favorite, color: context.appColors.teal),
          );
        } else {
          return Text("error");
        }
      },
    );
  }
}
