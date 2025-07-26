import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/planet_details/data/models/alarm_model.dart';
import 'package:fasila/features/planet_details/data/service/alarm_service.dart';

class AlarmServiceImpl implements AlarmService {
  final firestorServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;
  @override
  Future<void> addLableAlarm(AlarmModel alarm, String planetId) async {
    await firestorServices.setData(
      path: FirestorePath.planetAlarm(uid, planetId, alarm.id),
      data: alarm.toMap(),
    );
  }

  @override
  Stream<List<AlarmModel>> getLablesAlarm(String planetId) {
    return firestorServices.collectionsStram(
      path: FirestorePath.myPlanetAlarm(uid, planetId),
      builder: (data, documentId) => AlarmModel.fromMap(data!, documentId),
    );
  }

  @override
  Future<void> deleteLableAlarm(String planetId, AlarmModel alarm) { 
    return firestorServices.deleteData(
      path: FirestorePath.planetAlarm(uid, planetId, alarm.id),
    );
  }

  @override
  Future<void> updateLableAlarm(String planetId, AlarmModel alarm) {
    return firestorServices.updatedata(
      path: FirestorePath.planetAlarm(uid, planetId, alarm.id),
      data: alarm.toMap(),
    );
  }
}
