import 'package:app_2/temp/test_product_page.dart';

import 'package:flutter/material.dart';

import 'package:app_2/temp/test_large_items.dart';

class TestHome extends StatelessWidget {
  final List<Item> items;

  const TestHome({super.key, required this.items});

  // const TestHome({super.key, });

  // final column_of_cards = ProductCardsRepository().loadItemsFromJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Количество столбцов в сетке
        crossAxisSpacing: 5.0, // Расстояние между столбцами
        mainAxisSpacing: 50.0, // Расстояние между строками

        childAspectRatio: 1.0 / 1.477,
      ),
      itemCount: items.length, // Количество элементов в сетке
      itemBuilder: (context, index) {
        // Функция, которая создает каждый элемент сетки
        final item = items[index];
        return Stack(children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 200,
                child: AspectRatio(
                  aspectRatio:
                      1.0, // устанавливаем аспектное соотношение 1:1 (квадрат)
                  child: Image.network(item.imageUrl),
                ),
              ),

              Row(children: [
                Container(
                    child: Text(
                  item.price,
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 98, 57),
                  ),
                )),
                Container(
                  child: Text(
                    item.currency,
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
                  item.title,
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
                                  item: item,
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
    ));
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
