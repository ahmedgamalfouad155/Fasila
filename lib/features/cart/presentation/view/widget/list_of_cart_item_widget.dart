import 'package:fasila/features/cart/presentation/view/widget/cart_item_widget.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:flutter/material.dart';

class ListOfCartItemsWidget extends StatelessWidget {
  const ListOfCartItemsWidget({super.key, required this.myProductsCart});

  final List<SaveProductModel> myProductsCart;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final product = myProductsCart[index];
        return CartItemWidget(prouct: product);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: myProductsCart.length,
    );
  }
}
