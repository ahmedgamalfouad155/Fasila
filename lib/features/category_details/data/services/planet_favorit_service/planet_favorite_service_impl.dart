import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/category_details/data/models/planet_favorite_model.dart';
import 'package:fasila/features/category_details/data/services/planet_favorit_service/planet_favorite_service.dart';

class PlanetFavoriteServiceImpl implements PlanetFavoriteServices {
  final firestorServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Future<void> addPlanetToFavorite(PlanetFavoriteModel planet) async {
    await firestorServices.setData(
      path: FirestorePath.favoritePlanet(uid, planet.planetModel.id),
      data: planet.toMap(),
    );
  }

  @override
  Future<void> deletePlanetFromFavorite(PlanetFavoriteModel planet) async {
    await firestorServices.deleteData(
      path: FirestorePath.favoritePlanet(uid, planet.planetModel.id), 
    );
  }
}
