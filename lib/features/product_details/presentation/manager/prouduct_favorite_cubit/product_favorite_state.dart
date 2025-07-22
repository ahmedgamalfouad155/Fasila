sealed class ProductFavoriteState {}

final class ProuductFavoriteInitial extends ProductFavoriteState {}

final class ProuductFavoriteLoadingState extends ProductFavoriteState {}

final class ProuductFavoriteSuccessState extends ProductFavoriteState {}

final class ProuductFavoriteFailedState extends ProductFavoriteState {
  final String error;

  ProuductFavoriteFailedState(this.error);
}

final class DeleteProuductFromFavoriteLoadingState
    extends ProductFavoriteState {}

final class DeleteProuductFromFavoriteSuccessState
    extends ProductFavoriteState {}

final class DeleteProuductFromFavoriteFailedState extends ProductFavoriteState {
  final String error;

  DeleteProuductFromFavoriteFailedState(this.error);
}
