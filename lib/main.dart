import 'package:app_2/temp/test_large_items.dart';
import 'package:flutter/material.dart';
import 'package:app_2/temp/Test_home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final List<Item> items;
  // final int len;
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestHome_1(),
    );
  }
}
