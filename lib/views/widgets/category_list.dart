import 'package:flutter/material.dart';
import 'package:health_app/dummy/category_data.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: category
            .map(
              (e) => Container(
                margin: const EdgeInsets.only(left: 5, right: 15),
                child: Text(
                  e,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
