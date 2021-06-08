class Product {
  Product({
    required this.id,
    required this.name,
    this.image,
    required this.imageUrl,
    required this.brand,
    required this.description,
    required this.price,
    required this.quantity,
    required this.countInStock,
    required this.createdAt,
    required this.createdBy,
    required this.updatedBy,
    required this.category,
  });

  int id;
  String name;
  dynamic image;
  String imageUrl;
  String brand;
  String description;
  String price;
  int quantity;
  int countInStock;
  DateTime createdAt;
  int createdBy;
  int updatedBy;
  int category;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        imageUrl: json["image_url"],
        brand: json["brand"],
        description: json["description"],
        price: json["price"],
        quantity: json["quantity"],
        countInStock: json["countInStock"],
        createdAt: DateTime.parse(json["createdAt"]),
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
        category: json["category"],
      );
}
