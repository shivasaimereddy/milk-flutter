import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/components/coustom_bottom_nav_bar.dart';
import 'package:milk_delivery_flutter/enums.dart';
import 'package:milk_delivery_flutter/screens/home/drawer_screen.dart';
import 'package:milk_delivery_flutter/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
