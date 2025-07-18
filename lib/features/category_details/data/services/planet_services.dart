 import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class PlanetServices{ 
  Future<List<PlanetModel>> getPlanets(String categoryName); 
 }

