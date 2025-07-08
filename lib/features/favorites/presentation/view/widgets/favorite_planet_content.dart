import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_filter_buttons_widget.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePlanetContent extends StatelessWidget {
  const FavoritePlanetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider(
          create: (context) => FilterCubit(),
          child: MyPlanetFilterButtonsWidget(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => MyPlanetItemWidget(
                image: AppImages.myPlanet1Image,
                title: "title",
                type: "fruits",
                button: DefaultButtonWidget(
                  height: 30,
                  style: AppStyles.textStyle12White(
                    context,
                  ).copyWith(fontWeight: FontWeight.bold),
                  text: "Add To My Garden",
                  onPressed: () {},
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 5,
            ),
          ),
        ),
      ],
    );
  }
}
