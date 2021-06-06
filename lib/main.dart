import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/constants.dart';
import 'package:milk_delivery_flutter/routes.dart';
import 'package:milk_delivery_flutter/screens/profile/profile_screen.dart';
import 'package:milk_delivery_flutter/screens/splash/splash_screen.dart';
import 'package:milk_delivery_flutter/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

final darkTheme = kDarkTheme;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      title: 'Milk Delivery App',
      //home: SplashScreen(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
