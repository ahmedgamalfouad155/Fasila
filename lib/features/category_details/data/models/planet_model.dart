import 'package:fasila/features/category_details/data/models/daily_farm_entry_model.dart';
import 'package:fasila/features/category_details/data/models/planet_care_model.dart';

class PlanetModel {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final String description;
  final PlantCareModel planetCare;
  final List<DailyFarmEntry> dailyFarm;

  PlanetModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.planetCare,
    required this.dailyFarm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'category': category,
      'imageUrl': imageUrl,
      'description': description,
      'care': planetCare.toMap(),
      'dailyFarming': dailyFarm.map((entry) => entry.toMap()).toList(),
    };
  }

  factory PlanetModel.fromMap(Map<String, dynamic> map, String documentId) {
    final dailyFarmData = (map['dailyFarming'] as List<dynamic>? ?? [])
        .map((e) => DailyFarmEntry.fromMap(e as Map<String, dynamic>))
        .toList();

    return PlanetModel(
      id: documentId,
      name: map['name'] as String,
      category: map['category'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
      planetCare: PlantCareModel.fromMap(map['care'] as Map<String, dynamic>),
      dailyFarm: dailyFarmData,
    );
  }
}
