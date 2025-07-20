import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class AddToGardenServices {
  Future<void> addPlanetToGarden(PlanetModel planet);
}
