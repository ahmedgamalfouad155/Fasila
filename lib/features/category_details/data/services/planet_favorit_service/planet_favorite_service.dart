import 'package:fasila/features/category_details/data/models/planet_favorite_model.dart';

abstract class PlanetFavoriteServices {
  Future<void> addPlanetToFavorite(PlanetFavoriteModel planet);

  Future<void> deletePlanetFromFavorite(PlanetFavoriteModel planet);
}
