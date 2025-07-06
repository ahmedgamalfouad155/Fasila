import 'package:flutter_bloc/flutter_bloc.dart';

class WeeksTogetCubit extends Cubit<int> {
  WeeksTogetCubit() : super(0); 

  void togetBetwenWeeks(int index) {
    emit(index);
  }
}
