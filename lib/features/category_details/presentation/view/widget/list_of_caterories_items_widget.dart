import 'package:fasila/features/category_details/presentation/view/widget/category_item_widget.dart';
import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:flutter/material.dart';

class ListOfCateroriesItemsWidget extends StatelessWidget {
  const ListOfCateroriesItemsWidget({super.key,required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final item = myPlanetData[category]![index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CategoryItemWidget(myPlanetModel: item),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount:  myPlanetData[category]!.length,
      ),
    );
  }
}
