import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/data/services/planet_services.dart';

class PlanetServicesImpl implements PlanetServices {
  final firestor = FirestoreServices.instance;

  @override
  Future<List<PlanetModel>> getPlanets(String categoryName) async =>
      await firestor.getCollection(
        path: FirestorePath.planets(),
        builder: (data, documentId) => PlanetModel.fromMap(data, documentId),
        queryBuilder: (query) =>
            query.where('category', isEqualTo: categoryName),
      );
}
