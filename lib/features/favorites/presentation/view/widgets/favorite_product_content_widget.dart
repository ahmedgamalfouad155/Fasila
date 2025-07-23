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
        switch (selectedIndex) {
          case 0:
            return const ListOfFavoriteProductItemWidget(category: all);
          case 1:
            return const ListOfFavoriteProductItemWidget(category: pots);
          case 2:
            return const ListOfFavoriteProductItemWidget(category: gardenSupplies);
          case 3:
            return const ListOfFavoriteProductItemWidget(category: seeds);
          case 4:
            return const ListOfFavoriteProductItemWidget(category: fertilizer);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}