
class PlantCareModel {
  final String water;
  final String light;
  final String temperature;
  final String soil;
  final String humidity;
  final String fertilizer;
  final String season;

  PlantCareModel({
    required this.water,
    required this.light,
    required this.temperature,
    required this.soil,
    required this.humidity,
    required this.fertilizer,
    required this.season,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'water': water,
      'light': light,
      'temperature': temperature,
      'soil': soil,
      'humidity': humidity,
      'fertilizer': fertilizer,
      'season': season,
    };
  }

  factory PlantCareModel.fromMap(Map<String, dynamic> map) {
    return PlantCareModel(
      water: map['water'] as String,
      light: map['light'] as String,
      temperature: map['temperature'] as String,
      soil: map['soil'] as String,
      humidity: map['humidity'] as String,
      fertilizer: map['fertilizer'] as String,
      season: map['season'] as String,
    );
  }


}
