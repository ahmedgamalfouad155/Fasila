
sealed class PlanetFavoriteState {}

final class PlanetFavoriteInitial extends PlanetFavoriteState {}

final class PlanetFavoriteLoadingState extends PlanetFavoriteState {}

final class PlanetFavoriteSuccessState extends PlanetFavoriteState {

  PlanetFavoriteSuccessState();
}

final class PlanetFavoriteFailedState extends PlanetFavoriteState {
  final String error;

  PlanetFavoriteFailedState(this.error);
}

final class DeletePlanetFromFavoriteLoadingState extends PlanetFavoriteState {}

final class DeletePlanetFromFavoriteSuccessState extends PlanetFavoriteState {}

final class DeletePlanetFromFavoriteFailedState extends PlanetFavoriteState {
  final String error;

  DeletePlanetFromFavoriteFailedState(this.error);
}
