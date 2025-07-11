import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/product_filter_content.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_filter_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: Column(
        children: [
          ShopFilterButtonsWidget(),
          const SizedBox(height: 10),
          ProductFilterContentWidget(),
        ],
      ),
    );
  }
}
