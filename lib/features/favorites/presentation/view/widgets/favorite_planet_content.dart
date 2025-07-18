import 'package:fasila/core/constants/images.dart';
// import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
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
        ? Column(
            children: [
              BlocProvider(
                create: (context) => FilterCubit(),
                child: MyPlanetFilterButtonsWidget(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.75,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    // final item = myPlanetData[all]![index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      // child: CategoryItemWidget(
                      //   myPlanetModel: item,
                      //   button: DefaultButtonWidget(
                      //     height: 30,
                      //     style: AppStyles.textStyle12White(
                      //       context,
                      //     ).copyWith(fontWeight: FontWeight.bold),
                      //     text: "Add To My Garden",
                      //     onPressed: () {},
                      //   ),
                      // ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: images.length,
                ),
              ),
            ],
          )
        : const CustomEmptyPage(
            image: AppImages.emptyFavoriteImage,
            title: 'You Have No Favorite Plants',
            subTitle: 'Browse our plants and add your favorite ones',
          );
  }
}
