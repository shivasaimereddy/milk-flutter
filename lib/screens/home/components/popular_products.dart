import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/api/Product.dart';
import 'package:milk_delivery_flutter/models/Product.dart';
import 'package:milk_delivery_flutter/screens/home/components/product_card.dart';
import 'package:milk_delivery_flutter/screens/home/components/section_title.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late Future<List<Product>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Product>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Product>? data = snapshot.data;
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
                          data!.length,
                          (index) => ProductCard(
                            productName: data[index].name,
                            image: data[index].imageUrl,
                            description: data[index].description,
                            price: data[index].price,
                            quantity: data[index].quantity,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
