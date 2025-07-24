import 'package:fasila/core/constants/global_data.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/data/services/planet_favorit_service/planet_favorite_service.dart';
import 'package:fasila/features/category_details/data/services/planet_favorit_service/planet_favorite_service_impl.dart';
import 'package:fasila/features/category_details/presentation/manager/planet_favoritecubit/planet_favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetFavoriteCubit extends Cubit<PlanetFavoriteState> {
  PlanetFavoriteCubit() : super(PlanetFavoriteInitial());

  bool isFavorite = false;

  final PlanetFavoriteServices addtofavoriteServices =
      PlanetFavoriteServiceImpl();

  Future<void> addPlanetToFavorite(PlanetModel planet) async {
    emit(PlanetFavoriteLoadingState());
    try {
      await addtofavoriteServices.addPlanetToFavorite(planet);
      emit(PlanetFavoriteSuccessState());
      isFavorite = true;
      favoritePlanetsId.add(planet.id);
    } catch (e) {
      emit(PlanetFavoriteFailedState(e.toString()));
    }
  }

  Future<void> deletePlanetFromFavorite(PlanetModel planet) async {
    emit(DeletePlanetFromFavoriteLoadingState());
    try {
      await addtofavoriteServices.deletePlanetFromFavorite(planet);
      emit(DeletePlanetFromFavoriteSuccessState());
      isFavorite = false;
      favoritePlanetsId.remove(planet.id);
    } catch (e) {
      emit(DeletePlanetFromFavoriteFailedState(e.toString()));
    }
  }

  bool isPlanetFavorite(String planetId) {
    return favoritePlanetsId.contains(planetId);
  }
}
