import 'package:fasila/features/product_details/data/models/favorit_product_model.dart';

abstract class ProductFavoriteServices {
  Future<void> addProductToFavorite(FavoriteProductModel product);

  Future<void> deleteProductFromFavorite(FavoriteProductModel product);
}
