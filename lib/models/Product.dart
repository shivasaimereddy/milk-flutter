class Product {
  Product({
    required this.pid,
    required this.name,
    required this.image,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.quantityType,
    required this.stock,
    required this.hasPlan,
    required this.cid,
    required this.categoryName,
    required this.categoryImage,
    required this.categoryImageUrl,
    this.rating,
    this.numReviews,
    required this.isCarousel,
    required this.description,
  });

  int pid;
  String name;
  String image;
  List<String> imageUrl;
  String price;
  int quantity;
  String quantityType;
  int stock;
  bool hasPlan;
  int cid;
  String categoryName;
  String categoryImage;
  String categoryImageUrl;
  dynamic rating;
  dynamic numReviews;
  bool isCarousel;
  String description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        pid: json["pid"],
        name: json["name"],
        image: json["image"] == null ? null : json["image"],
        imageUrl: List<String>.from(json["image_url"].map((x) => x)),
        price: json["price"],
        quantity: json["quantity"],
        quantityType: json["quantity_type"],
        stock: json["stock"],
        hasPlan: json["has_plan"] == null ? null : json["has_plan"],
        cid: json["cid"],
        categoryName: json["category_name"],
        categoryImage: json["category_image"],
        categoryImageUrl: json["category_image_url"],
        rating: json["rating"],
        numReviews: json["num_reviews"],
        isCarousel: json["is_carousel"] == null ? null : json["is_carousel"],
        description: json["description"],
      );
}
