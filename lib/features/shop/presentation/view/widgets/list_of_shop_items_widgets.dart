import 'package:fasila/features/shop/presentation/view/widgets/shop_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfShopItemsWidgets extends StatelessWidget {
  const ListOfShopItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => ShopItemWidget(),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 5,
      ),
    );
  }
}
