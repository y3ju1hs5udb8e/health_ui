import 'package:health_app/model/doctors_model.dart';

List<Map<String, String>> doctorData = [
  {
    'name': 'Dr.Stefini Albert',
    'sector': 'Heart Specialist',
    'profile': 'assets/images/doctor.png'
  }
];

final doctors = doctorData.map((e) => DoctorDetail.fromJson(e)).toList();
