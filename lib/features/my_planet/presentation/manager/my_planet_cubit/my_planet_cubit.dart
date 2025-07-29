import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/my_planet/data/services/my_planet_service_impl.dart';
import 'package:fasila/features/my_planet/data/services/my_planet_services/my_planet_service.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 

class MyPlanetCubit extends Cubit<MyPlanetState> {
  MyPlanetCubit() : super(MyPlanetInitial());

  final MyPlanetServices myPlanetServices = MyPlanetServicesImpl();

  void getAllMyPlanet() async {
    emit(MyPlanetLoadingState());
    try {
      final myPlanets = await myPlanetServices.getAllMyPlanet();
      emit(MyPlanetSuccessState(myPlanets));
    } catch (e) {
      emit(MyPlanetFailedState(e.toString()));
    }
  }

  void getMyPlanetDependedOnCategoryName({required String categoryName}) async {
    emit(MyPlanetLoadingState());
    try {
      final myPlanets = await myPlanetServices.getMyPlanetDependedOnCategoryName(
        categoryName,
      );
      emit(MyPlanetSuccessState(myPlanets));
    } catch (e) {
      emit(MyPlanetFailedState(e.toString()));
    }
  }
  

}
