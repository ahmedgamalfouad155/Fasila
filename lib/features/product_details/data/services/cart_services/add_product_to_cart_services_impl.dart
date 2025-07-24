import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:fasila/features/product_details/data/services/cart_services/add_product_to_cart_services.dart';

class AddProductToCartServicesImpl implements AddProductToCartServices {
  final firestorServices = FirestoreServices.instance;

  @override
  Future<void> addProductToCart(SaveProductModel product) async {
    final uid = AuthServicesImpl().currentUser!.uid;
    await firestorServices.setData(
      path: FirestorePath.carts(uid, product.productId),
      data: product.toMap(),
    );
  }
}
