import 'package:fasila/core/logic/search_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_cubit.dart';
import 'package:fasila/features/category_details/presentation/view/widget/list_of_caterories_items_widget.dart';
import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryFilterContentWidget extends StatelessWidget {
  const CategoryFilterContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        final cubit = context.read<PlanetsCubit>(); 
        switch (selectedIndex) {
          case 0:
            cubit.getAllPlanets();
            break;
          case 1:
            cubit.getCategoryPlanets(categoryName: vegetable);
            break;
          case 2:
            cubit.getCategoryPlanets(categoryName: fruits);
            break;
          case 3:
            cubit.getCategoryPlanets(categoryName: leavyPlant);
            break;
          case 4:
            cubit.getCategoryPlanets(categoryName: ornamental);
            break;
        }
        return const ListOfCateroriesItemsWidget();
      },
    );
  }
}
