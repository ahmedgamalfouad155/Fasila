import 'package:fasila/features/favorites/presentation/manager/favorite_product_cubit/favorire_product_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_product_content_widget.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_filter_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteProductsContent extends StatelessWidget {
  const FavoriteProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavorireProductCubit(),
      child: Column(
        children: [
          ShopFilterButtonsWidget(),
          const SizedBox(height: 10),
          FavoriteProductContentWidget(),
        ],
      ),
    );
  }
}
