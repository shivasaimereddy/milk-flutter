class Category {
  Category({
    required this.cid,
    required this.name,
    // required this.image,
    required this.imageUrl,
    required this.description,
  });

  int cid;
  String name;
  // String image;
  String imageUrl;
  String description;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        cid: json["cid"],
        name: json["name"],
        // image: json["image"] == null ? null : json["image"],
        imageUrl: json["image_url"],
        description: json["description"],
      );
}
