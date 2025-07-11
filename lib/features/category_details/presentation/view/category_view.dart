import 'package:fasila/core/widgets/custom_search_app_bar.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_view_body.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSearchAppBar(context: context),
      body: CategoryViewBody(),
    );
  }
}
