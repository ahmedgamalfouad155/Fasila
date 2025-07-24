import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/presentation/manager/planet_favoritecubit/planet_favorite_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planet_favoritecubit/planet_favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetFavoriteIconWidget extends StatelessWidget {
  const PlanetFavoriteIconWidget({
    super.key,
    required this.planetModel,
    this.iconSize,
  });
  final PlanetModel planetModel;

  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlanetFavoriteCubit>();
    return BlocBuilder<PlanetFavoriteCubit, PlanetFavoriteState>(
      bloc: cubit,
      builder: (context, state) {
        if (state is PlanetFavoriteLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is PlanetFavoriteInitial ||
            state is PlanetFavoriteSuccessState ||
            state is DeletePlanetFromFavoriteSuccessState) {
          return InkWell(
            onTap: () {
              cubit.isPlanetFavorite(planetModel.id)
                  ? cubit.deletePlanetFromFavorite(planetModel)
                  : cubit.addPlanetToFavorite(planetModel);
            },
            child: Icon(
              cubit.isPlanetFavorite(planetModel.id)
                  ? Icons.favorite
                  : Icons.favorite_border,
              size: iconSize ?? 15,
              color: context.appColors.teal,
            ),
          );
        } else {
          return Text("error");
        }
      },
    );
  }
}
