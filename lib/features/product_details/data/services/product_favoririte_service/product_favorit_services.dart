import 'package:fasila/features/shop/data/models/product_model.dart';

abstract class ProductFavoriteServices {
  Future<void> addProductToFavorite(ProductModel product);

  Future<void> deleteProductFromFavorite(ProductModel product);
}
