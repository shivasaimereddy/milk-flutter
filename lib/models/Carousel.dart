class Carousel {
  Carousel({
    required this.id,
    required this.name,
    this.image,
    required this.imageUrl,
    required this.createdAt,
    required this.createdBy,
    required this.updatedBy,
  });

  int id;
  String name;
  dynamic image;
  String imageUrl;
  DateTime createdAt;
  int createdBy;
  int updatedBy;

  factory Carousel.fromJson(Map<String, dynamic> json) => Carousel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        imageUrl: json["image_url"],
        createdAt: DateTime.parse(json["createdAt"]),
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
      );
}
