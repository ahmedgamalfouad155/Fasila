import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_cubit.dart';
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
        final cubit = context.read<MyPlanetCubit>();
        switch (selectedIndex) {
          case 0:
            cubit.getAllMyPlanet();
            break;
          case 1:
            cubit.getMyPlanetDependedOnCategoryName(categoryName: vegetable);
            break;
          case 2:
            cubit.getMyPlanetDependedOnCategoryName(categoryName: fruits);
            break;
          case 3:
            cubit.getMyPlanetDependedOnCategoryName(categoryName: leavyPlant);
            break;
          case 4:
            cubit.getMyPlanetDependedOnCategoryName(categoryName: ornamental);
            break;
        }
        return const ListOfMyPlanetItemsWidget();
      },
    );
  }
}
