import 'package:flutter/material.dart';
import 'package:untitled7/pages/Homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
      ),
      routes:{"/":(context) => Homepage()},
    );
  }
}
