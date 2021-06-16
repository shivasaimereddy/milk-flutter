class Product {
  Product({
    required this.id,
    required this.name,
    required this.quantityType,
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
  QuantityType quantityType;
  Category category;
  dynamic image;
  List<String> imageUrl;
  String brand;
  String description;
  String price;
  int quantity;
  int countInStock;
  DateTime createdAt;
  int createdBy;
  int updatedBy;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        quantityType: QuantityType.fromJson(json["quantityType"]),
        category: Category.fromJson(json["category"]),
        image: json["image"],
        imageUrl: List<String>.from(json["image_url"].map((x) => x)),
        brand: json["brand"],
        description: json["description"],
        price: json["price"],
        quantity: json["quantity"],
        countInStock: json["countInStock"],
        createdAt: DateTime.parse(json["createdAt"]),
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
      );
}

class Category {
  Category({
    required this.id,
    required this.categoryName,
    required this.description,
    this.image,
    required this.imageUrl,
    required this.createdBy,
    required this.updatedBy,
  });

  int id;
  String categoryName;
  String description;
  dynamic image;
  String imageUrl;
  int createdBy;
  int updatedBy;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        categoryName: json["categoryName"],
        description: json["description"],
        image: json["image"],
        imageUrl: json["image_url"],
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "categoryName": categoryName,
        "description": description,
        "image": image,
        "image_url": imageUrl,
        "createdBy": createdBy,
        "updatedBy": updatedBy,
      };
}

class QuantityType {
  QuantityType({
    required this.id,
    required this.type,
    required this.createdBy,
    this.updatedBy,
  });

  int id;
  String type;
  int createdBy;
  dynamic updatedBy;

  factory QuantityType.fromJson(Map<String, dynamic> json) => QuantityType(
        id: json["id"],
        type: json["type"],
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "createdBy": createdBy,
        "updatedBy": updatedBy,
      };
}
