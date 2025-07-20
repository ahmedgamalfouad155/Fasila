import 'package:fasila/features/category_details/data/services/planet_service/planet_services.dart';
import 'package:fasila/features/category_details/data/services/planet_service/planet_services_impl.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetsCubit extends Cubit<PlanetsState> {
  PlanetsCubit() : super(PlanetsInitial());

  final PlanetServices planetServices = PlanetServicesImpl();

  void getAllPlanets() async {
    emit(PlanetsLoadingState());
    try {
      final planets = await planetServices.getAllPlanets();
      emit(PlanetsSuccessState(planets));
    } catch (e) {
      emit(PlanetsFailedState(e.toString()));
    }
  }

  void getCategoryPlanets({required String categoryName}) async {
    emit(PlanetsLoadingState());
    try {
      final planets = await planetServices.getPlanetsDependedOnCategoryName(
        categoryName,
      );
      emit(PlanetsSuccessState(planets));
    } catch (e) {
      emit(PlanetsFailedState(e.toString()));
    }
  }
}
