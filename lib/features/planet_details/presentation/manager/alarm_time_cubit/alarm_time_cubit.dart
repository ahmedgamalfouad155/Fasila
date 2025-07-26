import 'package:flutter_bloc/flutter_bloc.dart';

class AlarmTimeCubit extends Cubit<DateTime> {
  AlarmTimeCubit() : super(DateTime.now());

  void updateTime(DateTime newTime) {
    emit(newTime);
  }
}
