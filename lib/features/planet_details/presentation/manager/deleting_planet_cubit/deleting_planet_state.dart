
sealed class DeletingPlanetState {}

final class DeletingPlanetInitial extends DeletingPlanetState {}


final class DeleteMyPlanetLoadingState extends DeletingPlanetState {}

final class DeleteMyPlanetSuccessState extends DeletingPlanetState {}

final class DeleteMyPlanetFailedState extends DeletingPlanetState {
  final String error;
  DeleteMyPlanetFailedState(this.error);
}