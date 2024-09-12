import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/HomePage.dart';

void main () {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => Homepage(),
        //"cartPage": (context) => CartPage(),
        //"itemPage": (context) => ItemPage(),
      },
    );
  }
}