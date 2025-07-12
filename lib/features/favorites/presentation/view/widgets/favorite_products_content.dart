import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/shop/data/product_data.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/product_item_widget.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_filter_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteProductsContent extends StatelessWidget {
  const FavoriteProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      // AppImages.productPot1Image,
      // AppImages.productPot2Image,
      // AppImages.productPot3Image,
      // AppImages.productPot4Image,
    ];
    return images.isNotEmpty
        ? Column(
            children: [
              BlocProvider(
                create: (_) => FilterCubit(),
                child: ShopFilterButtonsWidget(),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.6,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final product = productData[all]![index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ProductItemWidget(
                        product: product,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: productData[all]!.length,
                ),
              ),
            ],
          )
        : const CustomEmptyPage(
            image: AppImages.emptyFavoriteImage,
            title: 'You Have No Favorite Products',
            subTitle: 'Browse our products and add your favorite ones',
          );
  }
}
