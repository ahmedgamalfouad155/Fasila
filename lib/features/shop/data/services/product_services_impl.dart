
import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:fasila/features/shop/data/services/product_services.dart';

class ProductServicesImpl implements ProductServices {
  final firestor = FirestoreServices.instance;

  @override
  Future<List<ProductModel>> getAllProducts() async {
    return await firestor.getCollection(
      path: FirestorePath.products(),
      builder: (data, documentId) => ProductModel.fromMap(data, documentId),
    );
  }

  @override
  Future<List<ProductModel>> getProductsDependedOnCategoryName(
    String categoryName,
  ) async {
    return await firestor.getCollection(
      path: FirestorePath.products(),
      builder: (data, documentId) => ProductModel.fromMap(data, documentId),
      queryBuilder: (query) => query.where('category', isEqualTo: categoryName),
    );
  }
}
