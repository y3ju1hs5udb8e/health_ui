import 'package:flutter/material.dart';
import 'package:health_app/constant/app_colors.dart';
import 'package:health_app/dummy/options_data.dart';

class ShowOptions extends StatelessWidget {
  ShowOptions({super.key});

  List colors = [
    AppColors.indicateCod,
    AppColors.indicateHeart,
    AppColors.indicateCheckup,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: showOptions.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            height: 300,
            child: Container(
              height: 250,
              width: 180,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors[index],
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(showOptions[index].image),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    showOptions[index].title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    showOptions[index].doc,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
