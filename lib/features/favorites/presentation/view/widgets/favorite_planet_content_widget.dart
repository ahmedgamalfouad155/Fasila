import 'package:fasila/features/favorites/presentation/manager/favorite_planet_cubit/favorite_planet_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/list_of_favoite_planet_item_widget.dart';
import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePlanetContentWidget extends StatelessWidget {
  const FavoritePlanetContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        final cubit = context.read<FavoritePlanetCubit>();
        switch (selectedIndex) {
          case 0:
            cubit.getAllFavoritePlanets();
            break;
          case 1:
            cubit.getFavoritePlanetsDependedOnCategoryName(
              categoryName: vegetable,
            );
            break;
          case 2:
            cubit.getFavoritePlanetsDependedOnCategoryName(
              categoryName: fruits,
            );
            break;
          case 3:
            cubit.getFavoritePlanetsDependedOnCategoryName(
              categoryName: leavyPlant,
            );
            break;
          case 4:
            cubit.getFavoritePlanetsDependedOnCategoryName(
              categoryName: ornamental,
            );
            break;
          default: 
        }
        return const ListOfFavoitePlanetItemWidget();
      },
    );
  }
}
