import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:milk_delivery_flutter/models/OnBoarding.dart';
import 'package:milk_delivery_flutter/server.dart';

Future<List<OnBoarding>> fetchScreens() async {
  final response = await http.get(Uri.parse('$server/api/constants/screens/'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new OnBoarding.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
