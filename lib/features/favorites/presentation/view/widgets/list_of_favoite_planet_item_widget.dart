import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/favorites/presentation/manager/favorite_planet_cubit/favorite_planet_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_planet_item_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfFavoitePlanetItemWidget extends StatelessWidget {
  const ListOfFavoitePlanetItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritePlanetCubit, FavoritePlanetState>(
      builder: (context, state) {
        if (state is FavoritePlanetLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FavoritePlanetFailedState) {
          return Text(state.error);
        } else if (state is FavoritePlanetSuccessState) {
          if (state.favoritePlanets.isEmpty) {
            return CustomEmptyPage(
              image: AppImages.emptyFavoriteImage,
              title: S.of(context).youHaveNoFavoritePlants,
              subTitle: S.of(context).prowseAndAddNewFavoritePlants,
            );
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.separated(
              itemBuilder: (context, index) {
                final item = state.favoritePlanets[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FavoritePlanetItemWidget(planetModel: item),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: state.favoritePlanets.length,
            ),
          );
        } else {
          return Text("error in list of favorite planet item widget");
        }
      },
    );
  }
}
