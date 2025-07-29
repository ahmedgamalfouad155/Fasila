import 'dart:async';

import 'package:fasila/features/planet_details/data/models/alarm_model.dart';
import 'package:fasila/features/planet_details/data/service/alarm_service/alarm_service.dart';
import 'package:fasila/features/planet_details/data/service/alarm_service/alarm_service_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'alarm_planet_state.dart';

class AlarmPlanetCubit extends Cubit<AlarmPlanetState> {
  AlarmPlanetCubit() : super(AlarmPlanetInitial());
  final AlarmService alarmService = AlarmServiceImpl();

  StreamSubscription? _cartSubscription;

  @override
  Future<void> close() {
    _cartSubscription?.cancel();
    return super.close();
  }

  void getLablesAlarm(String planetId) async {
    emit(GettingAlarmPlanetLoadingState());
    _cartSubscription = alarmService
        .getLablesAlarm(planetId)
        .listen(
          (alarms) {
            emit(GettingAlarmPlanetSuccessState(alarms));
          },
          onError: (e) {
            emit(GettingAlarmPlanetFailedState(e.toString()));
          },
        );
  }

  void addLableAlarm(AlarmModel alarm, String plantId) async {
    emit(AddingAlarmPlanetLoadingState());
    try {
      await alarmService.addLableAlarm(alarm, plantId);
      emit(AddingAlarmPlanetSuccessState());
    } catch (e) {
      emit(AddingAlarmPlanetFailedState(e.toString()));
    }
  }

  void deleteLableAlarm(String planetId, AlarmModel alarm) async {
    emit(DeletingAlarmPlanetLoadingState());
    try {
      await alarmService.deleteLableAlarm(planetId, alarm);
      emit(DeletingAlarmPlanetSuccessState());
    } catch (e) { 
      emit(DeletingAlarmPlanetFailedState(e.toString()));
    }
  }

  void updateLableAlarm(  String planetId, AlarmModel alarm) async {
    emit(AlarmPlanetInitial());
    await alarmService.updateLableAlarm( planetId,alarm);
    emit(AddingAlarmPlanetSuccessState());
  }
}
