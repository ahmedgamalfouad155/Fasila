import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class PlanetServices {
  
   Future<List<PlanetModel>> getAllPlanets();
 
  Future<List<PlanetModel>> getPlanetsDependedOnCategoryName(
    String categoryName,
  );
}
