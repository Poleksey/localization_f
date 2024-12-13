// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/services.dart';

// class Item {
//   final String id;
//   final String title;
//   final String price;
//   final String currency;
//   final String imageUrl;

//   Item({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.currency,
//     required this.imageUrl,
//   });

//   factory Item.fromJson(Map<String, dynamic> json) {
//     return Item(
//       id: json['id'],
//       title: json['title'],
//       price: json['price'],
//       currency: json['currency'],
//       imageUrl: json['imageUrl'],
//     );
//   }
// }

// // String jsonString = '''
// //    {
// //      "items": [
// //        {
// //          "id": "01",
// //          "title": "Металлический кубик",
// //          "price": "1000",
// //          "currency": "rub",
// //          "imageUrl": "https://atlas-content-cdn.pixelsquid.com/stock-images/silver-cube-3AaJe6D-600.jpg"
// //        },
// //        {
// //          "id": "02",
// //          "title": "Breakfast Earlgrey",
// //          "price": "200",
// //          "currency": "rub",
// //          "imageUrl": "https://napitkistore.ru/wp-content/uploads/2017/07/twg-breakfast-earl-grey-tea-15.webp"
// //        }
// //      ]
// //    }
// //    ''';

// // Future<String> readFileAsString(String filePath) async {
// //   try {
// //     final file = File(filePath);
// //     final contents = await file.readAsString();
// //     return contents;
// //   } catch (e) {
// //     print('Error reading file: $e');
// //     return '';
// //   }
// // }

// // final json_2 = await readFileAsString('app_2 / lib / data / list_of_products.json');

// //  String main() async {
// //    final json_2 = await readFileAsString('app_2 / lib / data / list_of_products.json');

// //  }

// Future<void> readJson() async {
//   final String response =
//       await rootBundle.loadString('assets/json_files/list_of_products.json');
//   final data = await json.decode(response);
//   return data;
// }

// // Future<String> convertToString() {
// //   return readJson()
// //       .then((_) => 'Успешное выполнение')
// //       .catchError((error) => 'Ошибка: $error');
// // }
// // Future<String> convertToString() async {
// //   try {
// //     await readJson();
// //     return 'Успешное выполнение';
// //   } catch (error) {
// //     return 'Ошибка: $error';
// //   }
// // }

// Future<String> convertToString() {
//   return readJson()
//       .then((_) => Future.value('Успешное выполнение'))
//       .catchError((error) => Future.error('Ошибка: $error'));
// }

// Future<String> readJsonFromFile() async {
//   // Путь к JSON файлу
//   const String jsonFilePath = 'assets/json_files/list_of_products.json';

//   final File file = File(jsonFilePath);
//   final String jsonData = await file.readAsString();

//   return jsonData;
// }

// Future<String> main() async {
//   String jsonString = await readJsonFromFile();
//   return jsonString;
// }

// Future<String> def() async {
//   String jsonString = await main();
//   return jsonString;
// }

// String jsonString = def() as String;
// String jsonString_2 = convertToString() as String;

// Map<String, dynamic> jsonData = jsonDecode(jsonString_2);
// List<Item> items = (jsonData['items'] as List<dynamic>)
//     .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
//     .toList();
