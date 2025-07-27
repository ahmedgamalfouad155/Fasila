import 'package:fasila/core/logic/search_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_cubit.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_filter_content_widget.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_filter_buttons_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FilterCubit()),
        BlocProvider(create: (context) => PlanetsCubit()..getAllPlanets()),
      ],
      child: Column(
        children: [
          MyPlanetFilterButtonsWidget(),
          const SizedBox(height: 15),
          CategoryFilterContentWidget(),
        ],
      ),
    );
  }
}
