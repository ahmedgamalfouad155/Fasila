 import 'package:fasila/features/shop/data/models/product_model.dart';

abstract class FavoriteProductService {
   Future<List<ProductModel>> getAllFavoriteProducts();
  Future<List<ProductModel>> getFavoriteProductsDependedOnCategoryName(
    String categoryName,
  );
 }