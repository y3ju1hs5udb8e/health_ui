import 'package:health_app/model/options_model.dart';

List<Map<String, String>> options = [
  {
    'title': 'Cold\nand Cough',
    'image': 'assets/images/fever.png',
    'doctorAvailable': '10 Doctors',
  },
  {
    'title': 'Heart\nSpecialist',
    'image': 'assets/images/heart.png',
    'doctorAvailable': '17 Doctors',
  },
  {
    'title': 'Full Body\nCheckUp',
    'image': 'assets/images/check-up.png',
    'doctorAvailable': '27 Doctors',
  },
];

final showOptions = options.map((e) => Disease.fromJson(e)).toList();
