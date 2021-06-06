import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/constants.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
    required this.seeMore,
  }) : super(key: key);

  final text, seeMore;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.black,
                fontWeight: FontWeight.w500)),
        GestureDetector(
          onTap: press,
          child: Text(
            seeMore,
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: getProportionateScreenWidth(14)),
          ),
        )
      ]),
    );
  }
}
