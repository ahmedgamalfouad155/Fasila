import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/my_planet/data/services/my_planet_services/my_planet_service.dart';

class MyPlanetServicesImpl implements MyPlanetServices {
  final firestorService = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Future<List<PlanetModel>> getAllMyPlanet() {
    return firestorService.getCollection(
      path: FirestorePath.myGarden(uid),
      builder: (data, documentId) => PlanetModel.fromMap(data, documentId),
    );
  }

  @override
  Future<List<PlanetModel>> getMyPlanetDependedOnCategoryName(
    String categoryName,
  ) {
    return firestorService.getCollection(
      path: FirestorePath.myGarden(uid),
      builder: (data, documentId) => PlanetModel.fromMap(data, documentId),
      queryBuilder: (query) => query.where('category', isEqualTo: categoryName),
    );  
  }
}
