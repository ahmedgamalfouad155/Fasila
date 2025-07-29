import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/data/service/deleting_planet_service/deleting_planet_service.dart';
import 'package:fasila/features/planet_details/data/service/deleting_planet_service/deleting_planet_service_impl.dart';
import 'package:fasila/features/planet_details/presentation/manager/deleting_planet_cubit/deleting_planet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeletingPlanetCubit extends Cubit<DeletingPlanetState> {
  DeletingPlanetCubit() : super(DeletingPlanetInitial());
  final DeletingPlanetService myPlanetServices = DeletingPlanetServiceImpl();

  void deleteMyPlanet(PlanetModel planet) async {
    emit(DeleteMyPlanetLoadingState());
    try {
      await myPlanetServices.deleteMyPlanet(planet);
      emit(DeleteMyPlanetSuccessState());
    } catch (e) {
      emit(DeleteMyPlanetFailedState(e.toString()));
    }
  }
}
