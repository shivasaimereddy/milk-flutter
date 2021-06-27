import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/components/back_button.dart';
import 'package:milk_delivery_flutter/components/default_button.dart';
import 'package:milk_delivery_flutter/constants.dart';
import 'package:milk_delivery_flutter/models/Product.dart';
import 'package:milk_delivery_flutter/screens/productDetails/components/product_images.dart';
import 'package:milk_delivery_flutter/size_config.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = "/productdetails";
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(
              top: getProportionateScreenHeight(10),
              left: getProportionateScreenWidth(10)),
          child: NavBackButton(
            press: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ProductImages(arguments: arguments),
            Container(

                //height: getProportionateScreenHeight(200),
                width: double.infinity,
                padding: EdgeInsets.only(
                    right: getProportionateScreenWidth(20),
                    left: getProportionateScreenWidth(20),
                    top: getProportionateScreenHeight(20),
                    bottom: getProportionateScreenHeight(20)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenWidth(30)),
                        topRight:
                            Radius.circular(getProportionateScreenWidth(30)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(arguments.productName,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(22),
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                        "Drinking your milk and talking at the same time may result in your having to be patted on the back and dried for quite a long time afterwords",
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "${arguments.quantity} ML",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      "₹${arguments.price}",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )),
            Container(
              color: Colors.white,
              child: arguments.hasPlan
                  ? OneTimeOrderOrSubscribe(size: size)
                  : Padding(
                      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                      child: DefaultButton(
                        btnText: "Add To Cart",
                        press: () {},
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class OneTimeOrderOrSubscribe extends StatelessWidget {
  const OneTimeOrderOrSubscribe({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: getProportionateScreenHeight(65),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "One Time Order",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w600),
            ),
            style: TextButton.styleFrom(
                primary: Colors.black54,
                backgroundColor: Colors.grey[100],
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20)))),
          ),
        ),
        Expanded(
            child: SizedBox(
          height: getProportionateScreenHeight(65),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Subscribe Now",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w600),
            ),
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)))),
          ),
        ))
      ],
    );
  }
}

class ProductDetailsArguments {
  final String productName, price, description;
  List image;
  final int quantity;
  final bool hasPlan;

  ProductDetailsArguments({
    required this.image,
    required this.price,
    required this.description,
    required this.quantity,
    required this.productName,
    required this.hasPlan,
  });
}
