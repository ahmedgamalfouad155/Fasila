
import 'package:flutter_bloc/flutter_bloc.dart';

enum FasilaProTogelTap { monthly, yearly }

class FasilaProCubit extends Cubit<FasilaProTogelTap> {
  FasilaProCubit() : super(FasilaProTogelTap.monthly);

  void selectTab(FasilaProTogelTap tab) => emit(tab);
}
