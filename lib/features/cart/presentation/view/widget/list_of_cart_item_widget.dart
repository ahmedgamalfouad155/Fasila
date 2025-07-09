import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/cart/presentation/view/widget/cart_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfCartItemsWidget extends StatelessWidget {
  const ListOfCartItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CartItemWidget(
        image: AppImages.lastest1Image,
        title: 'title',
        price: 'price',
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 4,
    );
  }
}
