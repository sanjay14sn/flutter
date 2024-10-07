import 'package:flutter/material.dart';
import 'package:untitled7/pages/Homepage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
      ),
      routes:{"/":(context) => Homepage()},
    );
  }
}
