import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/models/Product.dart';
import 'package:milk_delivery_flutter/screens/home/components/product_card.dart';
import 'package:milk_delivery_flutter/screens/home/components/section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
            text: "Popular Product", press: () {}, seeMore: "See More"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                ...List.generate(
                  products.length,
                  (index) => ProductCard(
                    product: products[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
