import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/cart/data/services/cart_services.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';

class CartServicesImpl implements CartServices {
  final firestorServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Stream<List<SaveProductModel>> getMyProductsCart() {
    return firestorServices.collectionsStram(
      path: FirestorePath.myProductsCart(uid),
      builder: (data, documentId) =>
          SaveProductModel.fromMap(data!, documentId),
    );
  }

  @override
  Future<void> deleteProductFromCart(SaveProductModel product) async {
    await firestorServices.deleteData(
      path: FirestorePath.carts(uid, product.id),
    );
  }

  @override
  Future<void> updateProductInCart(SaveProductModel product) {
    return firestorServices.updatedata(
      path: FirestorePath.carts(uid, product.id),
      data: product.toMap(),
    );
  }
}
