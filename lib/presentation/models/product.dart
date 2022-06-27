import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String? productName;
  final String? productType;
  final String? productImage;
  final double? productPrice;
  Product({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productType,
  });

  factory Product.fromDocument(DocumentSnapshot documentSnapshot) {
    return Product(
      productImage: documentSnapshot['image'],
      productName: documentSnapshot['name'],
      productType: documentSnapshot['type'],
      productPrice: documentSnapshot['price'],
    );
  }
}
