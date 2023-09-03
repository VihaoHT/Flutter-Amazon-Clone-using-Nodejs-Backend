import 'dart:convert';

import 'package:flutter_amazon_clone/models/rating.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String name;
  final String description;
  final double quantity;
  final String category;
  final double price;
  String? id;
  final List<String> images;
  final List<Rating>? rating;
  Product({
    required this.name,
    required this.description,
    required this.quantity,
    required this.category,
    required this.price,
    this.id,
    required this.images,
    this.rating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'quantity': quantity,
      'category': category,
      'price': price,
      'id': id,
      'images': images,
      'rating': rating,
    };
  }

  //  factory Product.fromMap(Map<String, dynamic> map) {
  //   return Product(
  //     name: map['name'] ?? '',
  //     description: map['description'] ?? '',
  //     quantity: map['quantity']?.toDouble() ?? 0.0,
  //     images: List<String>.from(map['images']),
  //     category: map['category'] ?? '',
  //     price: map['price']?.toDouble() ?? 0.0,
  //     id: map['_id'],
  //   );
  // }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      description: map['description'] as String,
      quantity: map['quantity']?.toDouble() as double,
      category: map['category'] as String,
      price: map['price']?.toDouble() as double,
      id: map['_id'] != null ? map['_id'] as String : null,
      images: List<String>.from(
        (map['images']),
      ),
      rating: map['ratings'] != null
          ? List<Rating>.from(
              map['ratings']?.map(
                (x) => Rating.fromMap(x),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
