import 'package:app_2/network/product_page_model.dart';
import 'package:app_2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:app_2/temp/Test_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TestHome());
  }
}
