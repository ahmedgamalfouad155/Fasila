import 'package:fasila/core/widgets/custom_search_app_bar.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_cubit.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSearchAppBar(context: context),
      body: BlocProvider(
        create: (context) => PlanetsCubit()..getPlanets(categoryName: 'fruite'),
        child: CategoryViewBody(),
      ),
    );
  }
}
