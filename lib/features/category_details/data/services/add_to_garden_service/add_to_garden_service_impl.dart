import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/data/services/add_to_garden_service/add_to_garden_service.dart';

class AddToGardenServiceImpl implements AddToGardenServices {
  final firestoreServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Future<void> addPlanetToGarden(PlanetModel planet) async {
    await firestoreServices.setData(
      path: FirestorePath.garden(uid, planet.id),
      data: planet.toMap(),
    );
  }
}
