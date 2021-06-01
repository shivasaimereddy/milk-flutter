import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/routes.dart';
import 'package:milk_delivery_flutter/screens/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Milk Delivery App',
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
