import 'package:flutter_bloc/flutter_bloc.dart';

enum FavoriteTogelTap { plants, products }

class FavoriteTogelCubit extends Cubit<FavoriteTogelTap> {
  FavoriteTogelCubit() : super(FavoriteTogelTap.plants);

  void selectTab(FavoriteTogelTap tab) => emit(tab);
}
