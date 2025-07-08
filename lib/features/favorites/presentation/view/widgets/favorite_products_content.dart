import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_filter_buttons_widget.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteProductsContent extends StatelessWidget {
  const FavoriteProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider(
          create: (_) => FilterCubit(),
          child: ShopFilterButtonsWidget(),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.6,
          child: ListView.separated(
            itemBuilder: (context, index) => ShopItemWidget(
              image: AppImages.shop1Image,
              title: 'Zalaah',
              price: 'EGP 90.00',
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
