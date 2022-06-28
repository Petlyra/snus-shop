import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:snus_shop/utils/constraints.dart';

import '../body/widgets/item_container.dart';
import '../body/widgets/item_row.dart';
import '../entity/item.dart';

import 'package:http/http.dart' as http;

enum DisplayMode { view, edit }

final Map prices = {
  "Vika Deep Blue": "150",
  "G4": "200",
  "Shiro": "140",
  "Siberia Red": "180",
  "Odens": "190",
  "Baron Classic": "170",
  "LYFT Freeze X-Strong": "150",
  "Thunder X": "190",
};

final List<String> data = [
  "assets/Vika.jpg;Vika Deep Blue;150",
  "assets/G4.jpg;G4;200",
  "assets/Shiro.jpg;Shiro;140",
  "assets/Siberia.jpg;Siberia Red;180",
  "assets/Odens.jpg;Odens;190",
  "assets/Baron.jpg;Baron Classic;170",
  "assets/LYFT.jpg;LYFT Freeze X-Strong;150",
  "assets/Thunder.jpg;Thunder X;190",
];

List<Item> parseItems(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Item>((item) => Item.fromJson(item)).toList();
}

Future<List<Item>> fetchData() async {
  final response = await http.get(Uri.parse(itemsUrl));

  if (response.statusCode == 200) {
    return parseItems(response.body);
  } else {
    throw Exception("Failed to fetch data");
  }
}

List<Item> mockItems() {
  return data.map<Item>((item) {
    var itemData = item.split(";");

    return Item(
      image: Image.asset(itemData[0]),
      name: itemData[1],
      price: itemData[2],
    );
  }).toList();
}

Widget generateItemRow(List<Item> items, DisplayMode mode) {
  return ItemRow(
    items: items.map<ItemContainer>((item) {
      return ItemContainer(
        mode: mode,
        image: item.image,
        name: item.name,
        price: item.price,
      );
    }).toList(),
  );
}
