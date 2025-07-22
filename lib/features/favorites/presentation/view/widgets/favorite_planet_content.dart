import 'package:fasila/core/constants/images.dart';
// import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_planet_content_widget.dart';
// import 'package:fasila/core/widgets/default_button_widget.dart';
// import 'package:fasila/features/category_details/presentation/view/widget/category_item_widget.dart';
// import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_filter_buttons_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePlanetContent extends StatelessWidget {
  const FavoritePlanetContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AppImages.myPlanetFruit1Image,
      AppImages.myPlanetVegetable1Image,
      AppImages.myPlanetVegetable2Image,
      AppImages.myPlanetVegetable3Image,
    ];
    return images.isNotEmpty
        ? BlocProvider(
            create: (context) => FilterCubit(),
            child: Column(
              children: [
                MyPlanetFilterButtonsWidget(),
                const SizedBox(height: 20),
                FavoritePlanetContentWidget(),
              ],
            ),
          )
        : const CustomEmptyPage(
            image: AppImages.emptyFavoriteImage,
            title: 'You Have No Favorite Plants',
            subTitle: 'Browse our plants and add your favorite ones',
          );
  }
}
