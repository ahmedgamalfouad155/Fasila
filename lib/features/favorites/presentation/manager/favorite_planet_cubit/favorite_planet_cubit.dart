import 'dart:async'; 
import 'package:fasila/core/constants/global_data.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/favorites/data/service/favorite_planet_service/favorite_planet_service.dart';
import 'package:fasila/features/favorites/data/service/favorite_planet_service/favorite_planet_service_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_planet_state.dart';

class FavoritePlanetCubit extends Cubit<FavoritePlanetState> {
  FavoritePlanetCubit() : super(FavoritePlanetInitial());
  final FavoritePlanetService favoritePlanetService =
      FavoritePlanetServiceImpl();
  StreamSubscription? _cartSubscription;

  void getAllFavoritePlanets() async {
    emit(FavoritePlanetLoadingState());

    _cartSubscription = favoritePlanetService.getAllFavoritePlanets().listen(
      (planets) {
        emit(FavoritePlanetSuccessState(planets));
      },
      onError: (e) {
        emit(FavoritePlanetFailedState(e.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    _cartSubscription?.cancel();
    return super.close();
  }

  void getFavoritePlanetsDependedOnCategoryName({
    required String categoryName
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
      favoritePlanetsId.remove(planet.id);
    } catch (e) {
      emit(DeletePlanetFromFavoriteFailedState(e.toString()));
    }
  }
}
