import 'package:fasila/features/category_details/presentation/view/widget/list_of_caterories_items_widget.dart'; 
import 'package:fasila/features/shop/data/product_data.dart';
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
            return const ListOfCateroriesItemsWidget(category: pots);
          case 2:
            return const ListOfCateroriesItemsWidget(category: gardenSupplies);
          case 3:
            return const ListOfCateroriesItemsWidget(category: seeds);
          case 4:
            return const ListOfCateroriesItemsWidget(category: fertilizer);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
