part of 'add_to_garden_cubit.dart';

sealed class AddToGardenState {}

final class AddToGardenInitial extends AddToGardenState {}

final class AddToGardenLoadingState extends AddToGardenState {}

final class AddToGardenSuccessState extends AddToGardenState {}

final class AddToGardenFailedState extends AddToGardenState {
  final String error;

  AddToGardenFailedState(this.error);
}
