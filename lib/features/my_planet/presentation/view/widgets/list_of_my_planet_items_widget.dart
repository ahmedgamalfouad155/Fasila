import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfMyPlanetItemsWidget extends StatelessWidget {
  const ListOfMyPlanetItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AppImages.myPlanet1Image,
      AppImages.myPlanet2Image,
      AppImages.myPlanet3Image,
      AppImages.myPlanet4Image,
    ];
    final List<String> titles = ['Tomato', 'option', 'eggplant', 'onion'];
    final List<String> types = [
      'Fruits',
      'Vegetable',
      'Vegetable',
      'Vegetable',
    ];

    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => MyPlanetItemWidget(
          image: images[index],
          title: titles[index],
          type: types[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 4,
      ),
    );
  }
}
