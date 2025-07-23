import 'package:fasila/features/favorites/presentation/manager/favorite_product_cubit/favorire_product_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/list_of_favorite_product_item_widget.dart';
import 'package:fasila/features/shop/data/product_data.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteProductContentWidget extends StatelessWidget {
  const FavoriteProductContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        final cubit = context.read<FavorireProductCubit>();
        switch (selectedIndex) {
          case 0:
            cubit.getAllFavoriteProducts();
            break;
          case 1:
              cubit.getFavoriteProductsDependedOnCategoryName(
              categoryName: pots,
            );
            break;
          case 2:
            cubit.getFavoriteProductsDependedOnCategoryName(
              categoryName: gardenSupplies,
            );
            break;
          case 3:
                cubit.getFavoriteProductsDependedOnCategoryName(
              categoryName: seeds,
            );
            break;
          case 4:
              cubit.getFavoriteProductsDependedOnCategoryName(
              categoryName: fertilizer,
            );
            break; 
        }
        return const ListOfFavoriteProductItemWidget();
      },
    );
  }
}