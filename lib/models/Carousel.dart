class Carousel {
  Carousel({
    // required this.pid,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.detailsFlag,
  });

  // int pid;
  String name;
  String imageUrl;
  String description;
  bool detailsFlag;

  factory Carousel.fromJson(Map<String, dynamic> json) => Carousel(
        // pid: json["pid"] == null ? null : json["pid"],
        name: json["name"],
        imageUrl: json["image_url"],
        description: json["description"],
        detailsFlag: json["details_flag"],
      );
}
