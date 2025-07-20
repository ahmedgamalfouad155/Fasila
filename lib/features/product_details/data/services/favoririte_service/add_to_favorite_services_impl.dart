
  import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/product_details/data/services/favoririte_service/add_to_favorit_services.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';

class AddToFavoriteServicesImpl implements AddToFavoriteServices {
  final firestorServices = FirestoreServices.instance;

  @override
  Future<void> addProductToFavorite(ProductModel product) async {
    final uid = AuthServicesImpl().currentUser!.uid;
    await firestorServices.setData(
      path: FirestorePath.favorites(uid, product.id),
      data: product.toMap(),
    );
  }

  @override
  Future<void> deleteProductFromFavorite(ProductModel product) async {
    final uid = AuthServicesImpl().currentUser!.uid;
    await firestorServices.deleteData(
      path: FirestorePath.favorites(uid, product.id),
    );
  }
}
