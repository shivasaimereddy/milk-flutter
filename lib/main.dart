import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/routes.dart';
import 'package:milk_delivery_flutter/screens/home/home_screen.dart';
import 'package:milk_delivery_flutter/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
