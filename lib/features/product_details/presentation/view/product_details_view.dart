import 'package:fasila/core/widgets/custom_search_app_bar.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_details_view_body.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final productModel = GoRouterState.of(context).extra as ProductModel;
    return Scaffold(
      appBar: customSearchAppBar(context: context),
      body: ProductDetailsViewBody( productModel: productModel),
    );
  }
}
