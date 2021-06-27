import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/screens/home/home_screen.dart';
import 'package:milk_delivery_flutter/screens/productDetails/product_details_screen.dart';
import 'package:milk_delivery_flutter/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
};
