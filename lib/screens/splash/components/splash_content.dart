import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.headingText,
    required this.image,
    required this.subText,
    required this.headingTextColor,
    required this.btnText,
    required this.subTextColor,
    required this.btnColor,
  }) : super(key: key);
  final String headingText,
      subText,
      image,
      btnText,
      headingTextColor,
      subTextColor,
      btnColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          headingText,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subText,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.network(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
