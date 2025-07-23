import 'package:fasila/features/shop/data/product_data.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/manager/product_cubit/product_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/list_of_product_items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductFilterContentWidget extends StatelessWidget {
  const ProductFilterContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        final cubit = context.read<ProductCubit>();
        switch (selectedIndex) {
          case 0:
            cubit.getAllProducts();
            break;
          case 1:
            cubit.getProductsDependedOnCategoryName(categoryName: pots);
            break;
          case 2:
            cubit.getProductsDependedOnCategoryName(categoryName: gardenSupplies);
            break;
          case 3:
            cubit.getProductsDependedOnCategoryName(categoryName: seeds);
            break;
          case 4:
            cubit.getProductsDependedOnCategoryName(categoryName: fertilizer);
            break;
        }

        return const ListOfProductItemsWidgets();
      },
    );
  }
}
