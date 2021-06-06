import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('http://10.0.2.2:8000/api/constants/onboarding/1/'));

  //var response = await Dio().get('http://www.google.com');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
