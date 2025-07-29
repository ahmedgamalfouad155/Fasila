import 'package:fasila/features/category_details/data/models/planet_model.dart';

abstract class DeletingPlanetService {
    Future<void> deleteMyPlanet(PlanetModel planet);

}