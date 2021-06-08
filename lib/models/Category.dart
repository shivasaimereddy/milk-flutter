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
}
