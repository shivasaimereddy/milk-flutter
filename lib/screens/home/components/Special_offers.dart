import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> specialoffers = [
      {'imagePath': 'assets/images/banner1.jpg'},
      {'imagePath': 'assets/images/banner2.jpg'},
      {'imagePath': 'assets/images/banner3.jpg'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Row(children: [
          ...List.generate(
              specialoffers.length,
              (index) => SpecialOfferCard(
                  imagePath: specialoffers[index]['imagePath'], press: () {}))
        ]),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.imagePath,
    required this.press,
  }) : super(key: key);

  //final List<Map<String, dynamic>> categoriess;
  final String imagePath;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        child: SizedBox(
          width: getProportionateScreenWidth(240),
          height: getProportionateScreenHeight(140),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
