import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/screens/splash/models/api.dart';
import 'package:milk_delivery_flutter/screens/splash/models/models.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  _SplashContentState createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  late Future<Album> futureAlbum;

  @override
  Widget build(BuildContext context) {
    futureAlbum = fetchAlbum();

    return FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Spacer(),
                Text(
                  snapshot.data!.headingText1,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(36),
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2),
                Image.asset(
                  widget.image,
                  height: getProportionateScreenHeight(265),
                  width: getProportionateScreenWidth(235),
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
