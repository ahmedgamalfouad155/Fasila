import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/cart/presentation/view/widget/cart_item_widget.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartItemWidget(
          image: AppImages.lastest1Image,
          title: 'title',
          price: 'price',
        ),
      ],
    );
  }
}
