import 'package:flutter/material.dart';

class Item {
  Item({
    required this.id,
    required this.createdAt,
    required this.image,
    required this.name,
    required this.price,
    this.isExpanded = false,
  });

  String id;
  String createdAt;
  Image image;
  String name;
  String price;
  bool isExpanded;

  factory Item.fromJson(Map<String, dynamic> json) {
    var price = json["price"].toString().split(".");
    return Item(
      id: json["id"],
      createdAt: json["createdAt"],
      image: Image.asset(json["image"]),
      name: json["name"],
      price: price[0],
    );
  }
}
