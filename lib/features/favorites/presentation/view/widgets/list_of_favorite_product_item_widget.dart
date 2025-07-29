import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/favorites/presentation/manager/favorite_product_cubit/favorire_product_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_product_item_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfFavoriteProductItemWidget extends StatelessWidget {
  const ListOfFavoriteProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavorireProductCubit, FavorireProductState>(
      builder: (context, state) {
        if (state is FavorireProductLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FavorireProductFailedState) {
          return Text(state.error);
        } else if (state is FavorireProductSuccessState) {
          if (state.favoriteProducts.isEmpty) {
            return CustomEmptyPage(
              image: AppImages.emptyMyPlanetImage,
              title: S.of(context).youHaveNoProductsInYourCart,
              subTitle: S.of(context).prowseAndAddNewProducts,
            ); 
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.separated(
              itemBuilder: (context, index) {
                final item = state.favoriteProducts[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FavoriteProductItemWidget(product: item),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: state.favoriteProducts.length,
            ),
          );
        } else {
          return Text("error");
        }
      },
    );
  }
}
