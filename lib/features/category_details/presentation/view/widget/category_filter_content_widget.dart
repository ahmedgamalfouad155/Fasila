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
        switch (selectedIndex) {
          case 0:
            return const ListOfCateroriesItemsWidget(category: all);
          case 1:
            return const ListOfCateroriesItemsWidget(category: vegetable );
          case 2:
            return const ListOfCateroriesItemsWidget(category: fruits);
          case 3:
            return const ListOfCateroriesItemsWidget(category: leavyPlant);
          case 4:
            return const ListOfCateroriesItemsWidget(category: ornamental);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
