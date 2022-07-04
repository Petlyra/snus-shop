import 'dart:convert';

import '../entity/item.dart';
import 'package:http/http.dart' as http;

import '../utils/constraints.dart';

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
