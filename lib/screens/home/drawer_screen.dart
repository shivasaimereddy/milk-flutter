import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milk_delivery_flutter/drawer_config.dart';
import 'package:milk_delivery_flutter/size_config.dart';

import '../../constants.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(30),
            bottom: getProportionateScreenHeight(5),
            left: getProportionateScreenWidth(20)),
        color: Colors.orange[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenHeight(40),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/milklogo.jpeg"))),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(
                  "Milk Delivery",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: drawerItems
                  .map((element) => Padding(
                        padding: EdgeInsets.only(
                            top: getProportionateScreenWidth(26),
                            bottom: getProportionateScreenWidth(26)),
                        child: Row(
                          children: [
                            SvgPicture.asset(element['icon'],
                                height: getProportionateScreenHeight(20),
                                width: getProportionateScreenWidth(20)),
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Text(
                              element['title'],
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(16),
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/settings_1.svg",
                  height: getProportionateScreenHeight(20),
                  width: getProportionateScreenWidth(20),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Container(
                  width: getProportionateScreenWidth(2),
                  height: getProportionateScreenHeight(20),
                  color: Colors.grey,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                SvgPicture.asset("assets/icons/log-out.svg",
                    height: getProportionateScreenHeight(20),
                    width: getProportionateScreenWidth(20)),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(
                  "Log Out",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
