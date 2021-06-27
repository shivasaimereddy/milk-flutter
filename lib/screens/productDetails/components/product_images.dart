import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/constants.dart';
import 'package:milk_delivery_flutter/screens/productDetails/product_details_screen.dart';
import 'package:milk_delivery_flutter/size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  final ProductDetailsArguments arguments;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
      //decoration: BoxDecoration(color: Colors.grey[50]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: getProportionateScreenWidth(20)),
            child: SizedBox(
              //width: getProportionateScreenWidth(230),
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Image.network(widget.arguments.image[selectedImage]),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  widget.arguments.image.length, (index) => ImagePreview(index))
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector ImagePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenHeight(65),
        width: getProportionateScreenWidth(65),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: selectedImage == index ? shadowList : null,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.network(widget.arguments.image[index]),
      ),
    );
  }
}
