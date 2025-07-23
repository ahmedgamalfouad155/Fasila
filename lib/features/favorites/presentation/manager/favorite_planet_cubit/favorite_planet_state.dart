part of 'favorite_planet_cubit.dart';


sealed class FavoritePlanetState {}

final class FavoritePlanetInitial extends FavoritePlanetState {}

final class FavoritePlanetLoadingState extends FavoritePlanetState {}

final class FavoritePlanetSuccessState extends FavoritePlanetState {
  final List<PlanetModel> favoritePlanets;
  FavoritePlanetSuccessState(this.favoritePlanets);
}

final class FavoritePlanetFailedState extends FavoritePlanetState {
  final String error;

  FavoritePlanetFailedState(this.error);
}

final class DeletePlanetFromFavoriteLoadingState extends FavoritePlanetState {}

final class DeletePlanetFromFavoriteSuccessState extends FavoritePlanetState {}

final class DeletePlanetFromFavoriteFailedState extends FavoritePlanetState {
  final String error;

  DeletePlanetFromFavoriteFailedState(this.error);
}
