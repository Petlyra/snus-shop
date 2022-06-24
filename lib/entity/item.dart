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
}

