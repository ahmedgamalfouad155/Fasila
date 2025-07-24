class SaveProductModel {
  final String productId;
  final String name;
  final String category;
  final String imageUrl;
  final num price;
  final num quantity;
  final num totalPrice;
  final String discription;

  SaveProductModel({
    required this.productId,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.totalPrice,
    required this.discription,
  });

  SaveProductModel copyWith({
    String? productId,
    String? name,
    String? category,
    String? imageUrl,
    num? price,
    num? quantity,
    num? totalPrice,
    String? discription,
  }) {
    return SaveProductModel(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
      discription: discription ?? this.discription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'name': name,
      'category': category,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
      'totalPrice': totalPrice,
      'discription': discription,
    };
  }

  factory SaveProductModel.fromMap(Map<String, dynamic> map) {
    return SaveProductModel(
      productId: map['productId'] as String,
      name: map['name'] as String,
      category: map['category'] as String,
      imageUrl: map['imageUrl'] as String,
      price: map['price'] as num,
      quantity: map['quantity'] as num,
      totalPrice: map['totalPrice'] as num,
      discription: map['discription'] as String,
    );
  }
}
