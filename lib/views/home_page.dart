import 'package:flutter/material.dart';
import 'package:health_app/constant/app_colors.dart';
import 'package:health_app/dummy/user_doctors.dart';
import 'package:health_app/views/doctor_page.dart';
import 'package:health_app/views/widgets/category_list.dart';
import 'package:health_app/views/widgets/show_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        color: AppColors.appColor,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 70),
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  'Find Your\nConsultation',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.searchBoxColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20, top: 10),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      size: 25,
                    ),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              const Text(
                'Categories',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              const Category(),
              ShowOptions(),
              const Text(
                'Doctors',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.listColor,
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DoctorPage(
                            name: doctors[0].name,
                            profile: doctors[0].profile,
                            sector: doctors[0].sector,
                          );
                        },
                      ),
                    );
                  },
                  leading: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.indicateHeart,
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage(doctors[0].profile),
                      ),
                    ),
                  ),
                  title: Text(
                    doctors[0].name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: AppColors.indicateHeart,
                    ),
                  ),
                  subtitle: Text(
                    doctors[0].sector,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.indicateHeart,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Call'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
