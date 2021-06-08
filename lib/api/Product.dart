import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:milk_delivery_flutter/models/Product.dart';

Future<List<Product>> fetchProduct() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:8000/api/products/'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Product.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
