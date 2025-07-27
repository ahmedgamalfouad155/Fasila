import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<String> {
  SearchCubit() : super('');

  void updateQuery(String value) {
    emit(value); 
  }

  void clearQuery() {
    emit('');
  }
}
