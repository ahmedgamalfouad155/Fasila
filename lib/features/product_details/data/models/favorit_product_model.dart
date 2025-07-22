import 'package:fasila/features/shop/data/models/product_model.dart';

class FavoriteProductModel {
  final ProductModel productModel;
  final String type; 

    FavoriteProductModel({
    required this.productModel,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productModel': productModel.toMap(),
      'type': type,
    };
  }

  factory FavoriteProductModel.fromMap(Map<String, dynamic> map, String documentId) {
    return FavoriteProductModel(
      productModel: ProductModel.fromMap(map['productModel'] as Map<String, dynamic>, documentId),
      type: map['type'] as String,
    );
  } 

}


