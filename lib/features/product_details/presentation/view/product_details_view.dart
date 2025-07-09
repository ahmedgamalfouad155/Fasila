import 'package:fasila/core/widgets/custom_search_app_bar.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_details_view_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSearchAppBar(context: context),
      body: ProductDetailsViewBody(),
    );
  }
}
