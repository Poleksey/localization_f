// ignore_for_file: prefer_const_constructors

// import 'dart:convert';
import 'package:app_2/elements/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 60, right: 60),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'поиск товара',
                  fillColor: const Color.fromARGB(255, 209, 202, 202),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none)),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 621,
            child: ListView.builder(
              itemCount: 10, // количество элементов в списке
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Container(
                      // width: 150,
                      child: ProductCard(),
                    ),
                    SizedBox(width: 20),
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 0, right: 150),
                      // width: 150,
                      child: ProductCard(),
                    ),
                    Container()
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    title: Text(
      'SOMEBODY NE',
      style: TextStyle(
          color: Color.fromARGB(115, 255, 29, 29),
          fontSize: 24,
          fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.black,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        // ignore: sort_child_properties_last
        child: SvgPicture.asset('assets/icons/svgviewer-output.svg'),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
