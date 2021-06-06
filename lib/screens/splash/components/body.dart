import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/components/default_button.dart';
import 'package:milk_delivery_flutter/constants.dart';
import 'package:milk_delivery_flutter/screens/splash/components/splash_content.dart';
import 'package:milk_delivery_flutter/screens/splash/models/api.dart';
import 'package:milk_delivery_flutter/screens/splash/models/models.dart';
import 'package:milk_delivery_flutter/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<Album> futureAlbum;

  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text": "Welcome to Apzie", "image": "assets/images/splash_1.png"},
    {"text": "Milk Delivery App", "image": "assets/images/splash_2.png"},
    {
      "text": "Join our app. \nTry our Various Subscription Plans",
      "image": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    futureAlbum = fetchAlbum();

    return FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          var image = Image.network(snapshot.data!.image_1url);
          if (snapshot.hasData) {
            return SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: PageView.builder(
                            onPageChanged: (value) {
                              setState(() {
                                currentPage = value;
                              });
                            },
                            itemCount: splashData.length,
                            itemBuilder: (context, index) => SplashContent(
                                  image: "assets/images/splash_1.png",
                                  text: snapshot.data!.subText1,
                                ))),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        child: Column(children: [
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(splashData.length,
                                (index) => buildDot(index: index)),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          DefaultButton(
                            text: (snapshot.data!.btnText3),
                            press: () {},
                          ),
                          Spacer(),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : Color(0xFFD8D8D8D),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
