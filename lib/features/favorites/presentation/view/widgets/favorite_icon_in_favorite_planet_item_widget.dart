import 'dart:developer';

import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/favorites/presentation/manager/favorite_planet_cubit/favorite_planet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteIconInFavoritePlanetItemWidget extends StatelessWidget {
  const FavoriteIconInFavoritePlanetItemWidget({
    super.key,
    required this.planetModel,
  });
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavoritePlanetCubit>();
    return BlocBuilder<FavoritePlanetCubit, FavoritePlanetState>(
      bloc: cubit,
      builder: (context, state) {
        if (state is FavoritePlanetLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is DeletePlanetFromFavoriteFailedState) {
          log(state.error);
          return Text(state.error);
        } else if (state is FavoritePlanetInitial ||
            state is FavoritePlanetSuccessState ||
            state is DeletePlanetFromFavoriteSuccessState) {
          return InkWell(
            onTap: () {
              cubit.deletePlanetFromFavorite(planetModel);
            },
            child: Icon(Icons.favorite, color: context.appColors.teal),
          );
        } else {
          log('$state');
          return Text("errorrrrrrr");
        }
      },
    );
  }
}
