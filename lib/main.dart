import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/ecommerce_app/ecommerce_home_page.dart';
import 'package:flutter_ui/pages/login_one.dart';
import 'package:flutter_ui/pages/login_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const EcommerceHomePage(),
      title: "Flutter UIs",
    );
  }
}
