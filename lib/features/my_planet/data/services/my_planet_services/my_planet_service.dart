import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class MyPlanetServices {
  Future<List<PlanetModel>> getAllMyPlanet();
  Future<List<PlanetModel>> getMyPlanetDependedOnCategoryName(
    String categoryName,
  );
}
