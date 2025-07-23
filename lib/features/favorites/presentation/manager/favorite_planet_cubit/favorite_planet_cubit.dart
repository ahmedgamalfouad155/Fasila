import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/favorites/data/service/favorite_planet_service/favorite_planet_service.dart';
import 'package:fasila/features/favorites/data/service/favorite_planet_service/favorite_planet_service_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_planet_state.dart';

class FavoritePlanetCubit extends Cubit<FavoritePlanetState> {
  FavoritePlanetCubit() : super(FavoritePlanetInitial());
  final FavoritePlanetService favoritePlanetService =
      FavoritePlanetServiceImpl();

  void getAllFavoritePlanets() async {
    emit(FavoritePlanetLoadingState());
    try {
      final planets = await favoritePlanetService.getAllFavoritePlanets();
      emit(FavoritePlanetSuccessState(planets));
    } catch (e) {
      emit(FavoritePlanetFailedState(e.toString()));
    }
  }

  void getFavoritePlanetsDependedOnCategoryName({
    required String categoryName,
  }) async {
    emit(FavoritePlanetLoadingState());
    try {
      final planets = await favoritePlanetService
          .getFavoritePlanetsDependedOnCategoryName(categoryName);
      emit(FavoritePlanetSuccessState(planets));
    } catch (e) {
      emit(FavoritePlanetFailedState(e.toString()));
    }
  }

  void deletePlanetFromFavorite(PlanetModel planet) async {
    emit(DeletePlanetFromFavoriteLoadingState());
    try {
      await favoritePlanetService.deletePlanetFromFavorite(planet);
      emit(DeletePlanetFromFavoriteSuccessState());
    } catch (e) {
      emit(DeletePlanetFromFavoriteFailedState(e.toString()));
    }
  }
}
