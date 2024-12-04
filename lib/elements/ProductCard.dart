// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_2/pages/product.dart';

var ProductName = "название товара";
var cost = 5000;
var value = "₽";
String ProductCost = cost.toString() + value;

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 300,
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 0, right: 0),
        width: 180,
        height: 300,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          child: Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/01.jpg',
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 139,
                          top: -10,
                          width: 36,
                          child: SvgPicture.asset('assets/icons/heart.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 16.0),
                // SizedBox(width: 180),

                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    ProductCost,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 98, 57),
                    ),
                  ),
                ),

                SizedBox(height: 8.0),
                SizedBox(width: 180),

                Text(
                  ProductName,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // TextField(
                //   decoration: InputDecoration(
                //     hintText: 'что-то',
                //     border: OutlineInputBorder(),
                //   ),
                // ),
              ],
            ),
            Opacity(
              opacity: 0,
              child: SizedBox(
                // width: double.infinity,
                height: double.infinity,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      padding: EdgeInsets.zero,
                    ),
                    child: Text('product')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
