class OnBoarding {
  OnBoarding({
    required this.id,
    required this.name,
    required this.headingText,
    required this.subText,
    required this.btnText,
    this.image,
    required this.imageUrl,
    required this.backgroundColor,
    required this.headingTextColor,
    required this.subTextColor,
    required this.btnColor,
    required this.btnTextColor,
  });

  int id;
  String name;
  String headingText;
  String subText;
  String btnText;
  dynamic image;
  String imageUrl;
  String backgroundColor;
  String headingTextColor;
  String subTextColor;
  String btnColor;
  String btnTextColor;

  factory OnBoarding.fromJson(Map<String, dynamic> json) => OnBoarding(
        id: json["id"],
        name: json["name"],
        headingText: json["headingText"],
        subText: json["subText"],
        btnText: json["btnText"],
        image: json["image"],
        imageUrl: json["image_url"],
        backgroundColor: json["backgroundColor"],
        headingTextColor: json["headingTextColor"],
        subTextColor: json["subTextColor"],
        btnColor: json["btnColor"],
        btnTextColor: json["btnTextColor"],
      );
}
