import 'dart:async';

import 'package:fasila/features/favorites/data/service/favorite_product_service/favorire_product_service_impl.dart';
import 'package:fasila/features/favorites/data/service/favorite_product_service/favorite_product_service.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
part 'favorire_product_state.dart';

class FavorireProductCubit extends Cubit<FavorireProductState> {
  FavorireProductCubit() : super(FavorireProductInitial());
    final FavoriteProductService favoriteProductService =
      FavoriteProductServiceImpl();
        StreamSubscription? _cartSubscription;

    @override
  Future<void> close() {
    _cartSubscription?.cancel();
    return super.close();
  }

  void getAllFavoriteProducts() async {
    emit(FavorireProductLoadingState());
      _cartSubscription = favoriteProductService.getAllFavoriteProducts().listen(
      (products) {
        emit(FavorireProductSuccessState(products));
      },
      onError: (e) {
        emit(FavorireProductFailedState(e.toString()));
      },
    );
  }

  void getFavoriteProductsDependedOnCategoryName({required String categoryName}) async {  
    emit(FavorireProductLoadingState());
    try {
      final products = await favoriteProductService.getFavoriteProductsDependedOnCategoryName(
        categoryName,
      );
      emit(FavorireProductSuccessState(products));
    } catch (e) {
      emit(FavorireProductFailedState(e.toString()));
    }
  }

  void deleteFromFavorite(ProductModel product) async {
    emit(DeleteFromFavoriteLoadingState());
    try {
      await favoriteProductService.deleteProductFromFavorite(product);
      emit(DeleteFromFavoriteSuccessState());
    } catch (e) {
      emit(DeleteFromFavoriteFailedState(e.toString()));
    }
  }

}
