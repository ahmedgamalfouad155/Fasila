 class ProductModel {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final String discription;
  final num price;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.discription,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'category': category,
      'imageUrl': imageUrl,
      'discription': discription,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map, String documentId) {
    return ProductModel(
      id: documentId,
      name: map['name'] as String,
      category: map['category'] as String,
      imageUrl: map['imageUrl'] as String,
      discription: map['discription'] as String,
      price: map['price'] as num,
    );
  }

  
}

