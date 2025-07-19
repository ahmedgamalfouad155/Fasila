import 'package:fasila/features/shop/data/models/product_model.dart';

abstract class ProductServices {
  Future<List<ProductModel>> getAllProducts();
  Future<List<ProductModel>> getProductsDependedOnCategoryName(
    String categoryName,
  );
}
