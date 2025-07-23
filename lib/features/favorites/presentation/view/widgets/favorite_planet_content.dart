import 'package:fasila/features/favorites/presentation/manager/favorite_planet_cubit/favorite_planet_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_planet_content_widget.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_filter_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePlanetContent extends StatelessWidget {
  const FavoritePlanetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoritePlanetCubit(),
      child: Column(
        children: [
          MyPlanetFilterButtonsWidget(),
          const SizedBox(height: 20),
          FavoritePlanetContentWidget(),
        ],
      ),
    );
  }
}
