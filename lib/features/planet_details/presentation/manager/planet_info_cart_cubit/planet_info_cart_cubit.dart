// care_card_cubit.dart
import 'package:fasila/features/planet_details/presentation/manager/planet_info_cart_cubit/planet_info_cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CareCardCubit extends Cubit<CareCardState> {
  CareCardCubit({bool initiallyExpanded = false})
      : super(CareCardState(isExpanded: initiallyExpanded));

  void toggleExpanded() => emit(state.copyWith(isExpanded: !state.isExpanded));
}
