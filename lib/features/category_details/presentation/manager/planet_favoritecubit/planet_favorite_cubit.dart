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
      isFavorite = !isFavorite;
      await addtofavoriteServices.addPlanetToFavorite(planet);
      emit(PlanetFavoriteSuccessState());
    } catch (e) {
      emit(PlanetFavoriteFailedState(e.toString()));
    }
  }
  Future<void> deletePlanetFromFavorite(PlanetModel planet) async {
    emit(DeletePlanetFromFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.deletePlanetFromFavorite(planet);
      emit(DeletePlanetFromFavoriteSuccessState());
    } catch (e) {
      emit(DeletePlanetFromFavoriteFailedState(e.toString()));
    }
  }
}
