import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/educational_app/splash_screen.dart';
import 'package:flutter_ui/pages/search_bar.dart';
// import 'package:flutter_ui/pages/educational_app/home_page.dart';
// import 'package:flutter_ui/pages/stack_dashboard_design.dart';
// import 'package:flutter_ui/pages/ecommerce_app/ecommerce_home_page.dart';
// import 'package:flutter_ui/pages/login_one.dart';
// import 'package:flutter_ui/pages/login_three.dart';
// import 'package:flutter_ui/pages/stack_profile_design.dart';

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
      home: const SearchBarPage(),
      title: "Flutter UIs",
    );
  }
}
