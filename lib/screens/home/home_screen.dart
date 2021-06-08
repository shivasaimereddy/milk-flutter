import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milk_delivery_flutter/components/custom_bottom_nav_bar.dart';
import 'package:milk_delivery_flutter/enums.dart';
import 'package:milk_delivery_flutter/screens/home/components/categories.dart';
import 'package:milk_delivery_flutter/screens/home/drawer_screen.dart';
import 'package:milk_delivery_flutter/size_config.dart';

import '../../constants.dart';
import 'components/carousel.dart';
import 'components/popular_products.dart';
import 'components/search_name_wallet.dart';
import 'components/section_title.dart';
//import '../../size_config.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawOpen = false;
  bool isBottomNavOpen = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          AnimatedContainer(
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            duration: Duration(milliseconds: 250),
            //color: Colors.white,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    isDrawOpen ? getProportionateScreenWidth(30) : 0)),

            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: kPrimaryColor,
                  floating: true,
                  pinned: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          isDrawOpen ? getProportionateScreenWidth(30) : 0),
                    ),
                  ),
                  title: Container(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          isDrawOpen
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      xOffset = 0;
                                      yOffset = 0;
                                      scaleFactor = 1;
                                      isBottomNavOpen = true;
                                      isDrawOpen = false;
                                    });
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new))
                              : IconButton(
                                  icon:
                                      SvgPicture.asset("assets/icons/menu.svg"),
                                  onPressed: () {
                                    setState(() {
                                      xOffset =
                                          getProportionateScreenHeight(230);
                                      yOffset =
                                          getProportionateScreenWidth(160);
                                      scaleFactor = 0.6;
                                      isBottomNavOpen = false;
                                      isDrawOpen = true;
                                    });
                                  },
                                ),
                          Container(
                            padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(20)),
                            child: SvgPicture.asset(
                              "assets/icons/shopping_cart.svg",
                              width: getProportionateScreenWidth(30),
                              height: getProportionateScreenHeight(30),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SearchWithNameAndWallet(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        Categories(),
                        SizedBox(height: getProportionateScreenHeight(10)),
                        SectionTitle(
                            text: "Special for you", press: () {}, seeMore: ""),
                        SizedBox(height: getProportionateScreenHeight(10)),
                        SpecialOffer(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        PopularProducts(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Visibility(
          child: CustomBottomNavBar(
              selectedMenu: MenuState.home, isBottomNavOpen: isBottomNavOpen)),
    );
  }
}
