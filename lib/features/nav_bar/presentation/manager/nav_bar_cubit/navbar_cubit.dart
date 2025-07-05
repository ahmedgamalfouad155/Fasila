import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavVarInitial());

   int currentIndex = 0;


  void changeIndex(int index) {
    currentIndex = index;
    emit(BottomNavState());
  } 
}
