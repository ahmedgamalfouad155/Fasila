part of 'alarm_planet_cubit.dart';

sealed class AlarmPlanetState {}

final class AlarmPlanetInitial extends AlarmPlanetState {}

final class AddingAlarmPlanetLoadingState extends AlarmPlanetState {}

final class AddingAlarmPlanetSuccessState extends AlarmPlanetState {}

final class AddingAlarmPlanetFailedState extends AlarmPlanetState {
  final String error;

  AddingAlarmPlanetFailedState(this.error);
}

final class GettingAlarmPlanetLoadingState extends AlarmPlanetState {}

final class GettingAlarmPlanetSuccessState extends AlarmPlanetState {
  final List<AlarmModel> listOfAlarms;
  GettingAlarmPlanetSuccessState(this.listOfAlarms);
}

final class GettingAlarmPlanetFailedState extends AlarmPlanetState {
  final String error;

  GettingAlarmPlanetFailedState(this.error);
}   


final class DeletingAlarmPlanetLoadingState extends AlarmPlanetState {}

final class DeletingAlarmPlanetSuccessState extends AlarmPlanetState {}

final class DeletingAlarmPlanetFailedState extends AlarmPlanetState {
  final String error; 
  DeletingAlarmPlanetFailedState(this.error); 
}
