import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/list_of_my_planet_items_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPlanetFilterContentWidget extends StatelessWidget {
  const MyPlanetFilterContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        switch (selectedIndex) {
          case 0:
            return const ListOfMyPlanetItemsWidget(category: all);
          case 1:
            return const ListOfMyPlanetItemsWidget(category: vegetable);
          case 2:
            return const ListOfMyPlanetItemsWidget(category: fruits);
          case 3:
            return const ListOfMyPlanetItemsWidget(category: leavyPlant);
          case 4:
            return const ListOfMyPlanetItemsWidget(category: ornamental);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
