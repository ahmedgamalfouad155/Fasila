
import 'package:fasila/features/category_details/data/models/planet_care_model.dart';

class DailyFarmEntry {
  final Map<String, PlantCareModel> days;

  DailyFarmEntry({required this.days});

  Map<String, dynamic> toMap() {
    return {
      for (var entry in days.entries) entry.key: entry.value.toMap(),
    };
  }

  factory DailyFarmEntry.fromMap(Map<String, dynamic> map) {
    return DailyFarmEntry(
      days: map.map((key, value) {
        return MapEntry(key, PlantCareModel.fromMap(value));
      }),
    );
  }
}
