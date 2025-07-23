import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/favorites/data/service/favorite_planet_service/favorite_planet_service.dart';

class FavoritePlanetServiceImpl implements FavoritePlanetService {
  final firestorServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Stream<List<PlanetModel>> getAllFavoritePlanets() {
    return firestorServices.collectionsStram(
      path: FirestorePath.myFavoritePlanet(uid),
      builder: (data, documentId) => PlanetModel.fromMap(data!, documentId),
    );
  }

  @override
  Future<List<PlanetModel>> getFavoritePlanetsDependedOnCategoryName(
    String categoryName,
  ) {
    return firestorServices.getCollection(
      path: FirestorePath.myFavoritePlanet(uid),
      builder: (data, documentId) => PlanetModel.fromMap(data, documentId),
      queryBuilder: (query) => query.where('category', isEqualTo: categoryName),
    );
  }

    @override
  Future<void> deletePlanetFromFavorite(PlanetModel planet) async {
    await firestorServices.deleteData(
      path: FirestorePath.favoritePlanet(uid, planet.id),
    );
  }
}
