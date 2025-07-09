import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/shop/presentation/view/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfProductItemsWidgets extends StatelessWidget {
  const ListOfProductItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AppImages.shop1Image,
      AppImages.shop2Image,
      AppImages.shop3Image,
      AppImages.shop4Image,
    ];
    final List<String> titles = [
      'hand trowel',
      'fifi pot',
      'Chelated iron',
      'Zain Fert',
    ];
    final List<String> price = [
      'EGP 220.00',
      'EGP 150.00',
      'EGP 250.00',
      'EGP 200.00',
    ];

    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => ProductItemWidget(
          image: images[index],
          title: titles[index],
          price: price[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 4,
      ),
    );
  }
}
