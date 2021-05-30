import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Milk Delivery App'),
        ),
        body: Container(
          child: Center(
            child: Text('Hello, Lets build our Project!')
          ),
        ),
      ),
    );
  }
}
