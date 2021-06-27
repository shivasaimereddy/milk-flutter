import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/constants.dart';
import 'package:milk_delivery_flutter/size_config.dart';

class NavBackButton extends StatelessWidget {
  const NavBackButton({
    Key? key,
    required this.press,
  }) : super(key: key);
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: press,
        child: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.grey,
        ),
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(10)))),
      ),
    );
  }
}
