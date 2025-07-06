import 'package:flutter_bloc/flutter_bloc.dart';

enum TogelTap { plantInfo, reminders }

class TogelCubit extends Cubit<TogelTap> {
  TogelCubit() : super(TogelTap.plantInfo);

  void selectTab(TogelTap tab) => emit(tab);
}
