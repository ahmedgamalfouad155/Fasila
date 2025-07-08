import 'package:flutter_bloc/flutter_bloc.dart';

enum FavoriteTogelTap { plantInfo, reminders }

class DetailsTogelCubit extends Cubit<FavoriteTogelTap> {
  DetailsTogelCubit() : super(FavoriteTogelTap.plantInfo);

  void selectTab(FavoriteTogelTap tab) => emit(tab);
}
