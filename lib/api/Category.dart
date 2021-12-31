import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:milk_delivery_flutter/models/Category.dart';
import 'package:milk_delivery_flutter/server.dart';

Future<List<Category>> fetchCategories() async {
  final response = await http.get(Uri.parse('$server/api/data/category/'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Category.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
