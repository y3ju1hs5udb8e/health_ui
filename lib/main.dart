import 'package:flutter/material.dart';
import 'package:health_app/constant/app_colors.dart';
import 'package:health_app/views/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health ',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appColor,
        ),
        scaffoldBackgroundColor: AppColors.appColor,
      ),
      home: const HomePage(),
    );
  }
}
