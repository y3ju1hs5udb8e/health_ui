class DoctorDetail {
  String name;
  String sector;
  String profile;

  DoctorDetail({
    required this.name,
    required this.profile,
    required this.sector,
  });

  factory DoctorDetail.fromJson(Map<String, dynamic> json) {
    return DoctorDetail(
        name: json['name'], profile: json['profile'], sector: json['sector']);
  }
}
