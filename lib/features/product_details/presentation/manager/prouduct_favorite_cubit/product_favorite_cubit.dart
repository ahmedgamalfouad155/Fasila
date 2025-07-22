import 'package:fasila/features/product_details/data/models/favorit_product_model.dart';
import 'package:fasila/features/product_details/data/services/product_favoririte_service/product_favorit_services.dart';
import 'package:fasila/features/product_details/data/services/product_favoririte_service/product_favorite_services_impl.dart';
import 'package:fasila/features/product_details/presentation/manager/prouduct_favorite_cubit/product_favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductFavoriteCubit extends Cubit<ProductFavoriteState> {
  ProductFavoriteCubit() : super(ProuductFavoriteInitial());

  bool isFavorite = false;

  final ProductFavoriteServices addtofavoriteServices =
      ProductFavoriteServicesImpl();

  Future<void> addToFavorite(FavoriteProductModel product) async {
    emit(ProuductFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.addProductToFavorite(product);
      emit(ProuductFavoriteSuccessState());
    } catch (e) {
      emit(ProuductFavoriteFailedState(e.toString()));
    }
  }

  Future<void> deleteFromFavorite(FavoriteProductModel product) async {
    emit(DeleteProuductFromFavoriteLoadingState());
    try {
      isFavorite = !isFavorite;
      await addtofavoriteServices.deleteProductFromFavorite(product);
      emit(DeleteProuductFromFavoriteSuccessState());
    } catch (e) {
      emit(DeleteProuductFromFavoriteFailedState(e.toString()));
    }
  }
}
