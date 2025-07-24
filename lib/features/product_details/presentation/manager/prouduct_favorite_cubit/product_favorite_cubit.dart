import 'package:fasila/core/constants/global_data.dart';
import 'package:fasila/features/product_details/data/services/product_favoririte_service/product_favorit_services.dart';
import 'package:fasila/features/product_details/data/services/product_favoririte_service/product_favorite_services_impl.dart';
import 'package:fasila/features/product_details/presentation/manager/prouduct_favorite_cubit/product_favorite_state.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductFavoriteCubit extends Cubit<ProductFavoriteState> {
  ProductFavoriteCubit() : super(ProuductFavoriteInitial());

  

  final ProductFavoriteServices addtofavoriteServices =
      ProductFavoriteServicesImpl();

  Future<void> addToFavorite(ProductModel product) async {
    emit(ProuductFavoriteLoadingState());
    try {
      await addtofavoriteServices.addProductToFavorite(product);
      favoriteProductsId.add(product.id);
      emit(ProuductFavoriteSuccessState());
    } catch (e) {
      emit(ProuductFavoriteFailedState(e.toString()));
    }
  }

  Future<void> deleteFromFavorite(ProductModel product) async {
    emit(DeleteProuductFromFavoriteLoadingState());
    try {
      await addtofavoriteServices.deleteProductFromFavorite(product);
      favoriteProductsId.remove(product.id);
      emit(DeleteProuductFromFavoriteSuccessState());
    } catch (e) {
      emit(DeleteProuductFromFavoriteFailedState(e.toString()));
    }
  }

  bool isProductFavorite(String productId) {
    return favoriteProductsId.contains(productId);
  }
}
