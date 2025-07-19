import 'package:fasila/features/home/presentation/view/widgets/lastes_product_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/add_to_cart_button_and_qty_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/image_and_description_details_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        bottomNavigationBar: AddToCartButtonAndQtyWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageAndDescriptionDetailsWidget( productModel: productModel ),
              const SizedBox(height: 10),
              LastesProductWidget(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
