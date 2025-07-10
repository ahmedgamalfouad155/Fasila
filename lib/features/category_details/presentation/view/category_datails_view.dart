import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_details_view_body.dart';
import 'package:flutter/material.dart';

class CategoryDatailsView extends StatelessWidget {
  const CategoryDatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: context.appColors.teal)),
      body: CategoryDetailsViewBody(),
    );
  }
}
