import 'package:fasila/features/shop/data/product_data.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/list_of_product_items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductFilterContentWidget extends StatelessWidget {
  const ProductFilterContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        switch (selectedIndex) {
          case 0:
            return const ListOfProductItemsWidgets(category: all);
          case 1:
            return const ListOfProductItemsWidgets(category: pots);
          case 2:
            return const ListOfProductItemsWidgets(category: gardenSupplies);
          case 3:
            return const ListOfProductItemsWidgets(category: seeds);
          case 4:
            return const ListOfProductItemsWidgets(category: fertilizer);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
