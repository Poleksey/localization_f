import 'package:app_2/temp/test_large_items.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  // final String id_1;
  // ProductPage({required this.index_1});
  // const ProductPage({super.key});
  // final index_1 = index as Int;
  // final List<Item> items;
  final Item item;
  const ProductPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // int index = int.parse(id_1);
    // final item = items[index];
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          // width: 405,
          child: Column(children: [
            Container(
              // clipBehavior: Clip.hardEdge,
              child: Image.network(
                item.imageUrl,
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Center(
                      child: SizedBox(
                        child: Container(
                          height: 30,
                          margin: EdgeInsets.only(
                            top: 22,
                          ),
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 400,
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 15),
                            child: Text(
                              item.description,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Align(
                                  // alignment: Alignment.centerRight,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 134, 134, 134)),
                                      'Артикул Маркета'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Align(
                                  // alignment: Alignment.centerLeft,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                      '№ ариткула макета '),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Align(
                                  // alignment: Alignment.centerRight,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 134, 134, 134)),
                                      'Линейка'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Align(
                                  // alignment: Alignment.centerLeft,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                      'переменная линейки товаара'),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Align(
                                  // alignment: Alignment.centerRight,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 134, 134, 134)),
                                      'Цвет товара '),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Align(
                                  // alignment: Alignment.centerLeft,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                      'текстовя пеерменная цвета товара'),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Align(
                                  // alignment: Alignment.centerRight,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 134, 134, 134)),
                                      'Тип '),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Align(
                                  // alignment: Alignment.centerLeft,
                                  child: Text(
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                      'переменная типа товара '),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
