import 'dart:convert';

import 'package:app_2/elements/ProductCard.dart';

// import 'package:app_2/temp/test%20copy.dart';
// import 'package:app_2/pages/product.dart';
import 'package:app_2/temp/test_product_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_2/temp/test.dart';
// import 'package:app_2/temp/test copy.dart';
import 'package:app_2/temp/test_product_page.dart';
import 'package:app_2/temp/test_large_items.dart';
import 'Popup_menu.dart';

class TestHome_1 extends StatefulWidget {
  // const TestHome_1({super.key});

  @override
  TestHome createState() => TestHome();
}

class TestHome extends State<TestHome_1> {
  List<Item>? items;
  List<Item> items_1 = getItemsList_3();
  // void getItemsList_1() async {
  //   final response = await Dio().get(
  //     'https://github.com/Poleksey/localization_f/blob/main/lib/data/list_of_products_large.json',
  //   );
  //   final jsonData = jsonDecode(response.data) as Map<String, dynamic>;
  //   final itemData = (jsonData['items'] as List<dynamic>)
  //       .map((item) => Item.fromJson(item as Map<String, dynamic>))
  //       .toList();

  //   setState(() {
  //     items = itemData;
  //   });
  // }

  void initState() async {
    super.initState();
    items = await getItemsList_1();
    setState(() {});
  }

  void defenition() async {
    items = await getItemsList_1();
    setState(() {});
  }

  // const TestHome({super.key, });

  // final column_of_cards = ProductCardsRepository().loadItemsFromJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (items == null)
          ? SizedBox()
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Количество столбцов в сетке
                crossAxisSpacing: 5.0, // Расстояние между столбцами
                mainAxisSpacing: 50.0, // Расстояние между строками

                childAspectRatio: 1.0 / 1.477,
              ),
              itemCount: items_1.length, // Количество элементов в сетке
              itemBuilder: (context, index) {
                // Функция, которая создает каждый элемент сетки
                final superitem = items_1[index];
                return Stack(children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: AspectRatio(
                              aspectRatio:
                                  1.0, // устанавливаем аспектное соотношение 1:1 (квадрат)
                              child: Image.network(superitem.imageUrl),
                            ),
                          ),

                          Row(children: [
                            Container(
                                child: Text(
                              superitem.price,
                              style: const TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 98, 57),
                              ),
                            )),
                            Container(
                              child: Text(
                                superitem.currency,
                                style: const TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 98, 57),
                                ),
                              ),
                            )
                          ]),
                          Container(
                            child: Text(
                              superitem.title,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          // SizedBox(
                          //     child: Container(
                          //         margin: EdgeInsets.only(top: 20),
                          //         child: ListTile(
                          //           // leading: Image.network(item.imageUrl),
                          //           title: Text(item.title),
                          //           subtitle: Text('${item.price} ${item.currency}'),
                          //         )))
                        ]),
                  ),
                  Opacity(
                    opacity: 0,
                    child: SizedBox(
                      // width: double.infinity,
                      height: double.infinity,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                          item: superitem,
                                        )));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            padding: EdgeInsets.zero,
                          ),
                          child: Text('product')),
                    ),
                  ),
                ]);
              },
            ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.abc_rounded),
          onPressed: () async {
            items = await getItemsList_1();
            setState(() {});
          }),
    );
  }
}

// class TestHome extends StatelessWidget {
//   TestHome({super.key});
//   // final column_of_cards = ProductCardsRepository().loadItemsFromJson();
//   final len = items.length;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView.builder(
//       itemCount: len,
//       itemBuilder: (context, index) {
//         final item = items[index];
//         return Container(

//             child: ListTile(
//           leading: Image.network(item.imageUrl),
//           title: Text(item.title),
//           subtitle: Text('${item.price} ${item.currency}'),
//         ));
//       },
//     ));
//   }
// }
