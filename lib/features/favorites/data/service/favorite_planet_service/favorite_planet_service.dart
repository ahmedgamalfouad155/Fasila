import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class FavoritePlanetService {
  Stream<List<PlanetModel>> getAllFavoritePlanets();
  Future<List<PlanetModel>> getFavoritePlanetsDependedOnCategoryName(
    String categoryName,
  );
    Future<void> deletePlanetFromFavorite(PlanetModel planet);
 
}
