
import 'package:fasila/features/category_details/data/models/planet_model.dart';

sealed class PlanetsState {}

final class PlanetsInitial extends PlanetsState {}

final class PlanetsLoadingState extends PlanetsState {}

final class PlanetsSuccessState extends PlanetsState {
  final List<PlanetModel> planets;
  PlanetsSuccessState(this.planets);
}

final class PlanetsFailedState extends PlanetsState {
  final String error;
  PlanetsFailedState(this.error);
}

