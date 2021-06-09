import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milk_delivery_flutter/screens/home/home_screen.dart';
import 'package:milk_delivery_flutter/size_config.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
    required this.isBottomNavOpen,
  }) : super(key: key);

  final MenuState selectedMenu;
  final bool isBottomNavOpen;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Visibility(
      visible: isBottomNavOpen,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenHeight(14)),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SafeArea(
            top: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/Shop Icon.svg',
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/Heart Icon.svg',
                    color: MenuState.favourite == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/Chat bubble Icon.svg',
                    color: MenuState.message == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/User Icon.svg',
                      color: MenuState.profile == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                    ),
                    onPressed: () {}),
              ],
            )),
      ),
    );
  }
}
