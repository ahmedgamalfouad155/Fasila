import 'package:fasila/features/product_details/data/models/save_product_model.dart';

abstract class AddProductToCartServices {
  
  Future<void> addProductToCart(SaveProductModel product);
}