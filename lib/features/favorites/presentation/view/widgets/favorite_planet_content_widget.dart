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
        switch (selectedIndex) {
          case 0:
            return const ListOfFavoitePlanetItemWidget(category: all);
          case 1:
            return const ListOfFavoitePlanetItemWidget(category: vegetable);
          case 2:
            return const ListOfFavoitePlanetItemWidget(category: fruits);
          case 3:
            return const ListOfFavoitePlanetItemWidget(category: leavyPlant);
          case 4:
            return const ListOfFavoitePlanetItemWidget(category: ornamental);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
