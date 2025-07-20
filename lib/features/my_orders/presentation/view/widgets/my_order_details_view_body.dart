import 'package:fasila/features/my_orders/presentation/view/widgets/address_information_widget.dart';
import 'package:fasila/features/my_orders/presentation/view/widgets/deleverd_card_widget.dart';
import 'package:fasila/features/my_orders/presentation/view/widgets/ordered_product_widget.dart';
import 'package:flutter/material.dart';

class MyOrderDetailsViewBody extends StatelessWidget {
  const MyOrderDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DeleverdCardWidget(),
            const SizedBox(height: 10),
            OrderedProductsWidget(),
            const SizedBox(height: 10),
            AddressInformationWidget(),
            const SizedBox(height: 10),
            // SubtotalCartItemsWidget(),
          ],
        ),
      ),
    );
  }
}
