import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_product_content_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_filter_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteProductsContent extends StatelessWidget {
  const FavoriteProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AppImages.productPot1Image,
      AppImages.productPot2Image,
      AppImages.productPot3Image,
      AppImages.productPot4Image,
    ];
    return images.isNotEmpty
        ? BlocProvider(
            create: (context) => FilterCubit(),
            child: Column(
              children: [
                ShopFilterButtonsWidget(),
                const SizedBox(height: 10),
                FavoriteProductContentWidget(),
              ],
            ),
          )
        : const CustomEmptyPage(
            image: AppImages.emptyFavoriteImage,
            title: 'You Have No Favorite Products',
            subTitle: 'Browse our products and add your favorite ones',
          );
  }
}
