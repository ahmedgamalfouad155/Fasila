import 'package:flutter_bloc/flutter_bloc.dart';

class AddToFavoriteCubit extends Cubit<bool> {
  AddToFavoriteCubit() : super(false);

  void changeIcon(bool value) => emit(value);
    
}
