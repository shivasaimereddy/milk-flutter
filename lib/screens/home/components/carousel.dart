import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/api/Carousel.dart';
import 'package:milk_delivery_flutter/models/Carousel.dart';

import '../../../size_config.dart';

class SpecialOffer extends StatefulWidget {
  @override
  _SpecialOfferState createState() => _SpecialOfferState();
}

class _SpecialOfferState extends State<SpecialOffer> {
  late Future<List<Carousel>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchCarousel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Carousel>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Carousel>? data = snapshot.data;
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                child: Row(children: [
                  ...List.generate(
                      data!.length,
                      (index) => SpecialOfferCard(
                            image: data[index].imageUrl,
                            press: () {},
                            name: '',
                          ))
                ]),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class SpecialOfferCard extends StatefulWidget {
  const SpecialOfferCard({
    Key? key,
    required this.name,
    required this.image,
    required this.press,
  }) : super(key: key);

  //final List<Map<String, dynamic>> categoriess;
  final String name, image;
  final GestureTapCallback press;

  @override
  _SpecialOfferCardState createState() => _SpecialOfferCardState();
}

class _SpecialOfferCardState extends State<SpecialOfferCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        child: SizedBox(
          width: getProportionateScreenWidth(240),
          height: getProportionateScreenHeight(140),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
