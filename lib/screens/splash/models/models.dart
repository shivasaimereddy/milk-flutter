class Album {
  final String name;
  final String headingText1;
  final String subText1;
  final String btnText3;
  final String image_1url;

  Album(
      {required this.name,
      required this.headingText1,
      required this.subText1,
      required this.btnText3,
      required this.image_1url});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      headingText1: json['headingText1'],
      subText1: json['subText1'],
      btnText3: json['btnText3'],
      image_1url: json['image_1url'],
    );
  }
}
