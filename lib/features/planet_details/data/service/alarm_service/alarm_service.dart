import 'package:fasila/features/planet_details/data/models/alarm_model.dart';

abstract class AlarmService {
  Future<void> addLableAlarm(AlarmModel alarm, String planetId);
  Stream<List<AlarmModel>> getLablesAlarm(String planetId);
  Future<void> deleteLableAlarm( String planetId,AlarmModel alarm);

  Future<void> updateLableAlarm(String planetId,AlarmModel alarm);
}
