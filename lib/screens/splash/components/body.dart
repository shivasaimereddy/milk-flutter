import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/api/OnBoarding.dart';
import 'package:milk_delivery_flutter/models/OnBoarding.dart';
import 'package:milk_delivery_flutter/screens/home/home_screen.dart';
import 'package:milk_delivery_flutter/screens/splash/components/splash_content.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<List<OnBoarding>> futureData;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    futureData = fetchScreens();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<OnBoarding>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<OnBoarding>? data = snapshot.data;
              return SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              currentPage = value;
                            });
                          },
                          itemCount: data!.length,
                          itemBuilder: (context, index) => SplashContent(
                            headingText: data[index].headingText,
                            subText: data[index].subText,
                            btnText: data[index].btnText,
                            image: data[index].imageUrl,
                            headingTextColor: data[index].headingTextColor,
                            btnColor: data[index].btnColor,
                            subTextColor: data[index].subTextColor,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20)),
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  data.length,
                                  (index) => buildDot(index: index),
                                ),
                              ),
                              Spacer(flex: 3),
                              DefaultButton(
                                btnText: (currentPage == data.length - 1
                                    ? "Get Started"
                                    : "Next"),
                                press: () {
                                  if (currentPage == data.length - 1) {
                                    Navigator.pushNamed(
                                        context, HomeScreen.routeName);
                                  } else {}
                                },
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Loading, Please Wait...',
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
