import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:milk_delivery_flutter/models/Category.dart';

Future<List<Category>> fetchData() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:8000/api/categories/'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Category.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
