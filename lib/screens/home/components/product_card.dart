import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 150,
    this.aspectRation = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        //height: getProportionateScreenHeight(300),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: shadowList,
              borderRadius: BorderRadius.circular(15)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AspectRatio(
              aspectRatio: aspectRation,
              child: Container(
                decoration: BoxDecoration(
                  //color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              product.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(16)),
              maxLines: 2,
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              product.quantity,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              "₹${product.price}",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w600),
            )
          ]),
        ),
      ),
    );
  }
}
