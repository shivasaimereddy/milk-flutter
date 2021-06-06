import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'name': 'Milk Bottle', 'iconPath': 'assets/images/milkbottle.jpg'},
      {'name': 'Milk Packet', 'iconPath': 'assets/images/milkpacket.jpg'},
      {'name': 'Curd', 'iconPath': 'assets/images/Curd.png'},
      {'name': 'Paneer', 'iconPath': 'assets/images/paneer.jpg'},
      {'name': 'Ghee', 'iconPath': 'assets/images/ghee.jpg'}
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(20)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                  categories.length,
                  (index) => CategoryCard(
                      iconPath: categories[index]['iconPath'],
                      name: categories[index]['name'],
                      press: () {}))
            ]),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.iconPath,
    required this.name,
    required this.press,
  }) : super(key: key);

  //final List<Map<String, dynamic>> categoriess;
  final String iconPath, name;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: SizedBox(
          width: getProportionateScreenWidth(70),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: shadowList),
                  child: Image.asset(iconPath),
                ),
              ),
              SizedBox(height: 5),
              Text(
                name,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
