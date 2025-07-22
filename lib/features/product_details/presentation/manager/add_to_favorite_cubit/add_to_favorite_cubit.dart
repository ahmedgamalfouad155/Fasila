import 'package:fasila/features/product_details/data/models/favorit_product_model.dart';
import 'package:fasila/features/product_details/data/services/product_favoririte_service/product_favorit_services.dart';
import 'package:fasila/features/product_details/data/services/product_favoririte_service/product_favorite_services_impl.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToFavoriteCubit extends Cubit<AddToFavoriteState> {
  AddToFavoriteCubit() : super(AddToFavoriteInitial());

  bool isFavorite = false;

  final ProductFavoriteServices addtofavoriteServices =
      ProductFavoriteServicesImpl();

  Future<void> addToFavorite(FavoriteProductModel product) async {
    emit(AddToFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.addProductToFavorite(product);
      emit(AddToFavoriteSuccessState());
    } catch (e) {
      emit(AddToFavoriteFailedState(e.toString()));
    }
  }

  Future<void> deleteFromFavorite(FavoriteProductModel product) async {
    emit(DeleteFromFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.deleteProductFromFavorite(product);
      emit(DeleteFromFavoriteSuccessState());
    } catch (e) {
      emit(DeleteFromFavoriteFailedState(e.toString()));
    }
  }
}
