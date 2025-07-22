
import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class PlanetFavoriteServices {
  Future<void> addPlanetToFavorite(PlanetModel planet);

  Future<void> deletePlanetFromFavorite(PlanetModel planet);
}
