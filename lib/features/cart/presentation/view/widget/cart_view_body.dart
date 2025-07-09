import 'package:fasila/features/cart/presentation/view/widget/checkout_and_add_product_button_widget.dart';
import 'package:fasila/features/cart/presentation/view/widget/list_of_cart_item_widget.dart';
import 'package:fasila/features/cart/presentation/view/widget/subtotal_cart_item_widget.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ListOfCartItemsWidget()),
          SliverToBoxAdapter(child: SubtotalCartItemsWidget()),
          SliverToBoxAdapter(child: CheckoutAndAddProductButtonsWidget()),
        ],
        // slivers: (
      ),
    );
  }
}
