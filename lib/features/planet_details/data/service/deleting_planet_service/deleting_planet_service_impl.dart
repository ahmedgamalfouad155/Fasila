 import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/data/service/deleting_planet_service/deleting_planet_service.dart';

class DeletingPlanetServiceImpl implements DeletingPlanetService {
  final firestorServices = FirestoreServices.instance;
    final uid = AuthServicesImpl().currentUser!.uid;
  @override
  Future<void> deleteMyPlanet(PlanetModel planet) {
    return firestorServices.deleteData(
      path: FirestorePath.garden(uid, planet.id),
    );
  }
}