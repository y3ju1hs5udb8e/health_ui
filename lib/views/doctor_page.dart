import 'package:flutter/material.dart';
import 'package:health_app/constant/app_colors.dart';
import 'package:health_app/constant/false_text.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({
    super.key,
    required this.sector,
    required this.name,
    required this.profile,
  });

  final String name;
  final String profile;
  final String sector;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          color: AppColors.appColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.indicateHeart,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        profile,
                        width: 150,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.indicateHeart,
                                ),
                              ),
                              Text(
                                name,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor:
                                      Colors.orangeAccent.withOpacity(0.3),
                                  foregroundColor: Colors.deepOrangeAccent,
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.message,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor:
                                      Colors.redAccent.withOpacity(0.3),
                                  foregroundColor: Colors.red,
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.call,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey[300],
                                  foregroundColor: Colors.grey,
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.video_call,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'About',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  DummyText.dummyText1,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22, color: Colors.grey[400]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Icon(Icons.access_time),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Address',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[300]),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Visit',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                'Monday-Friday',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[300]),
                              ),
                              Text(
                                'Open till - 7pm',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[300]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.indicateHeart,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/map.png',
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'Activity',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.indicateHeart,
                      ),
                      child: ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.featured_play_list),
                        ),
                        title: const Text(
                          'Doctors\'s\nDaily Post',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.indicateCod,
                      ),
                      child: ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.featured_play_list),
                        ),
                        title: const Text(
                          'Doctors\'s\nDaily Post',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
