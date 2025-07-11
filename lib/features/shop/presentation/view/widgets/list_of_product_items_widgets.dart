import 'package:fasila/features/shop/data/product_data.dart';
import 'package:fasila/features/shop/presentation/view/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfProductItemsWidgets extends StatelessWidget {
  const ListOfProductItemsWidgets({super.key, required this.category});

  final String? category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final product = productData[category]![index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ProductItemWidget(product: product),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: productData[category]!.length,
      ),
    );
  }
}
