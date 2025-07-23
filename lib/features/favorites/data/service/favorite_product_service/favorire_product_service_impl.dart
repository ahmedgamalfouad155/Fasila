import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/favorites/data/service/favorite_product_service/favorite_product_service.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';

class FavoriteProductServiceImpl implements FavoriteProductService {
  final firestorServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Stream<List<ProductModel>> getAllFavoriteProducts() {
    return firestorServices.collectionsStram(
      path: FirestorePath.myFavoriteProduct(uid),
      builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
    );
  }

  @override
  Future<List<ProductModel>> getFavoriteProductsDependedOnCategoryName(
    String categoryName,
  ) {
    return firestorServices.getCollection(
      path: FirestorePath.myFavoriteProduct(uid),
      builder: (data, documentId) => ProductModel.fromMap(data, documentId),
      queryBuilder: (query) => query.where('category', isEqualTo: categoryName),
    );
  }

  @override
  Future<void> deleteProductFromFavorite(ProductModel product) {
    return firestorServices.deleteData(
      path: FirestorePath.favoriteProduct(uid, product.id),
    );
  }
}
