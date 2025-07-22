import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/presentation/manager/planet_favoritecubit/planet_favorite_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planet_favoritecubit/planet_favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetFavoriteIconWidget extends StatelessWidget {
  const PlanetFavoriteIconWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlanetFavoriteCubit>();
    return BlocConsumer<PlanetFavoriteCubit, PlanetFavoriteState>(
      bloc: cubit,
      listener: (context, state) {
        if (state is PlanetFavoriteSuccessState) {
          customSnakBar(context, message: "Added To Favorite");
        } else if (state is DeletePlanetFromFavoriteSuccessState) {
          customSnakBar(context, message: "Deleted From Favorite");
        }
      },
      builder: (context, state) {
        if (state is PlanetFavoriteLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is PlanetFavoriteInitial ||
            state is PlanetFavoriteSuccessState ||
            state is DeletePlanetFromFavoriteSuccessState) {
          return InkWell(
            onTap: () {
              cubit.isFavorite
                  ? cubit.deletePlanetFromFavorite(planetModel)
                  : cubit.addPlanetToFavorite(planetModel);
            },
            child: Icon(
              cubit.isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 15,
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
