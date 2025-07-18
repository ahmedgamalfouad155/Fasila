

import 'package:fasila/features/category_details/data/services/planet_services.dart';
import 'package:fasila/features/category_details/data/services/planet_services_impl.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetsCubit extends Cubit<PlanetsState> {
  PlanetsCubit() : super(PlanetsInitial());

  final PlanetServices planetServices = PlanetServicesImpl();

  void getPlanets({required String categoryName}) async {
    emit(PlanetsLoadingState());
    try {
      final planets = await planetServices.getPlanets(categoryName);
      emit(PlanetsSuccessState(planets));
    } catch (e) {
      emit(PlanetsFailedState(e.toString()));
    }
  }
}
