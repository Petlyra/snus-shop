import 'dart:convert';

import '../entity/item.dart';
import 'package:http/http.dart' as http;

import '../utils/constraints.dart';

List<Item> parseItems(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Item>((item) => Item.fromJson(item)).toList();
}

Future<List<Item>> fetchItems() async {
  final response = await http.get(Uri.parse(itemsUrl));

  if (response.statusCode == 200) {
    return parseItems(response.body);
  } else {
    throw Exception("Failed to fetch items");
  }
}

Future<Item> updateItem(ItemRequest itemRequest) async {
  final response = await http.post(
    Uri.parse(itemsUrl),
    headers: <String, String>{
      "Content-type": "application/json; charset=UTF-8"
    },
    body: jsonEncode(<String, String>{
      "name": itemRequest.name,
      "image": itemRequest.image,
      "price": itemRequest.price
    }),
  );

  if (response.statusCode == 200) {
    return Item.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to update item");
  }
}

class ItemRequest {
  String name;
  String image;
  String price;

  ItemRequest(this.name, this.image, this.price);
}
