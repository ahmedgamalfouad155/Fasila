
import 'package:fasila/features/category_details/data/models/planet_model.dart';

sealed class MyPlanetState {}

final class MyPlanetInitial extends MyPlanetState {}

final class MyPlanetLoadingState extends MyPlanetState {}

final class MyPlanetSuccessState extends MyPlanetState {
  final List<PlanetModel> myPlanets;
  MyPlanetSuccessState(this.myPlanets);
}

final class MyPlanetFailedState extends MyPlanetState {
  final String error;
  MyPlanetFailedState(this.error);
}
