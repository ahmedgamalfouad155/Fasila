 import 'package:fasila/features/shop/data/models/product_model.dart';

abstract class FavoriteProductService {
   Stream<List<ProductModel>> getAllFavoriteProducts();
  Future<List<ProductModel>> getFavoriteProductsDependedOnCategoryName(
    String categoryName,
  );
  Future<void> deleteProductFromFavorite(ProductModel product);
 }