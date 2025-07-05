import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfMyPlanetItemsWidget extends StatelessWidget {
  const ListOfMyPlanetItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => MyPlanetItemWidget(),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 5,
      ),
    );
  }
}