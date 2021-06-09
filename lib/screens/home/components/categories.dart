import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/api/Category.dart';
import 'package:milk_delivery_flutter/models/Category.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late Future<List<Category>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Category>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Category>? data = snapshot.data;
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                          data!.length,
                          (index) => CategoryCard(
                              iconPath: data[index].imageUrl,
                              name: data[index].categoryName,
                              press: () {}))
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}

class CategoryCard extends StatefulWidget {
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
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
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
                  child: Image.network(widget.iconPath),
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.name,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
