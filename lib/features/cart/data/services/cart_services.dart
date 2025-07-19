import 'package:fasila/features/product_details/data/models/save_product_model.dart';

abstract class CartServices {
  Stream<List<SaveProductModel>> getMyProductsCart();
  Future<void> deleteProductFromCart(SaveProductModel product);
}
