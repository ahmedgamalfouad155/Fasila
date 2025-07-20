import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/data/services/add_to_garden_service/add_to_garden_service_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_to_garden_state.dart';

class AddToGardenCubit extends Cubit<AddToGardenState> {
  AddToGardenCubit() : super(AddToGardenInitial());

  final addToGardenService = AddToGardenServiceImpl();

  Future<void> addPlanetToGarden(PlanetModel planet) async {
    emit(AddToGardenLoadingState());
    try {
      await addToGardenService.addPlanetToGarden(planet);
      emit(AddToGardenSuccessState());
    } catch (e) {
      emit(AddToGardenFailedState(e.toString()));
    }
  }
}
