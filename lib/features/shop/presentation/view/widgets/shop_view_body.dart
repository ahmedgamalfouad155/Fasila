import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_filter_buttons_widget.dart';
import 'package:fasila/features/shop/presentation/view/widgets/list_of_product_items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 20),
          BlocProvider(
            create: (_) => FilterCubit(),
            child: ShopFilterButtonsWidget(),
          ),
          const SizedBox(height: 10),
          ListOfProductItemsWidgets(),
        ],
      ),
    );
  }
}
