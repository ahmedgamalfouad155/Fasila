import 'package:flutter_bloc/flutter_bloc.dart';

enum TMVTab { about, healthCare }

class TMVTabCubit extends Cubit<TMVTab> {
  TMVTabCubit() : super(TMVTab.about);

  void selectTab(TMVTab tab) => emit(tab);
}
