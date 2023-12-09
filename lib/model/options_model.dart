class Disease {
  String title;
  String image;
  String doc;
  Disease({required this.title, required this.image, required this.doc});

  //factory class
  factory Disease.fromJson(Map<String, dynamic> json) {
    return Disease(
      title: json['title'],
      image: json['image'],
      doc: json['doctorAvailable'],
    );
  }
}
