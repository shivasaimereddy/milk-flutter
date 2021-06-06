import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, quantity;
  final List<String> images;
  final double price;

  Product(
      {required this.id,
      required this.images,
      required this.title,
      required this.price,
      required this.description,
      required this.quantity});
}

// Our demo Products

List<Product> products = [
  Product(
    id: 1,
    images: [
      "assets/images/milkpacket.jpg",
      "assets/images/milkbottle.jpg",
      "assets/images/milkglass.png",
    ],
    title: "Organic Buffalo Milk",
    quantity: "500Ml",
    price: 69.99,
    description: description,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Curd.png",
    ],
    title: "Organic Buffalo Curd",
    quantity: "500Ml",
    price: 50.5,
    description: description,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/ghee.jpg",
    ],
    title: "Organic Cow Ghee",
    quantity: "500Ml",
    price: 36.55,
    description: description,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/paneer.jpg",
    ],
    title: "Paneer",
    quantity: "500Ml",
    price: 20.20,
    description: description,
  ),
];

const String description = "Milk,Ghee,Curd,Paneer";
