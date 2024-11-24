import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 0, right: 0),
      width: 180,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
          SizedBox(height: 16.0),
          SizedBox(width: 180),
          Text(
            'Цена продукта',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(width: 180),
          Text(
            'описание продукта',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'что-то',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
