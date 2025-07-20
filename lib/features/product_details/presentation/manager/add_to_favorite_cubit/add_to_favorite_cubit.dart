import 'package:fasila/features/product_details/data/services/favoririte_service/add_to_favorit_services.dart';
import 'package:fasila/features/product_details/data/services/favoririte_service/add_to_favorite_services_impl.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_state.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToFavoriteCubit extends Cubit<AddToFavoriteState> {
  AddToFavoriteCubit() : super(AddToFavoriteInitial());

  bool isFavorite = false;

  final AddToFavoriteServices addtofavoriteServices =
      AddToFavoriteServicesImpl();

  Future<void> addToFavorite(ProductModel product) async {
    emit(AddToFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.addProductToFavorite(product);
      emit(AddToFavoriteSuccessState());
    } catch (e) {
      emit(AddToFavoriteFailedState(e.toString()));
    }
  }

  Future<void> deleteFromFavorite(ProductModel product) async {
    emit(AddToFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.deleteProductFromFavorite(product);
      emit(AddToFavoriteSuccessState());
    } catch (e) {
      emit(AddToFavoriteFailedState(e.toString()));
    }
  }
}
