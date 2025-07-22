import 'package:fasila/features/category_details/data/models/planet_model.dart';

class PlanetFavoriteModel {
  final PlanetModel planetModel;
  final String type;

  PlanetFavoriteModel({required this.planetModel, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'planetModel': planetModel.toMap(), 'type': type};
  }

  factory PlanetFavoriteModel.fromMap(
    Map<String, dynamic> map,
    String documentId,
  ) {
    return PlanetFavoriteModel(
      planetModel: PlanetModel.fromMap(
        map['planetModel'] as Map<String, dynamic>,
        documentId,
      ),
      type: map['type'] as String,
    );
  }
}
