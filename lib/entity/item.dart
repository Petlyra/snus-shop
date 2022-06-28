import 'package:flutter/material.dart';

class Item {
  Item({
    required this.image,
    required this.name,
    required this.price,
    this.isExpanded = false,
  });

  Image image;
  String name;
  String price;
  bool isExpanded;

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      image: Image.asset(json["image"]),
      name: json["name"],
      price: json["price"],
    );
  }
}
