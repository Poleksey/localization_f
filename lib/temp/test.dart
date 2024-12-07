import 'dart:convert';
import 'dart:io';

class Item {
  final String id;
  final String title;
  final String price;
  final String currency;
  final String imageUrl;

  Item({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.imageUrl,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      currency: json['currency'],
      imageUrl: json['imageUrl'],
    );
  }
}

// String jsonString = '''
//    {
//      "items": [
//        {
//          "id": "01",
//          "title": "Металлический кубик",
//          "price": "1000",
//          "currency": "rub",
//          "imageUrl": "https://atlas-content-cdn.pixelsquid.com/stock-images/silver-cube-3AaJe6D-600.jpg"
//        },
//        {
//          "id": "02",
//          "title": "Breakfast Earlgrey",
//          "price": "200",
//          "currency": "rub",
//          "imageUrl": "https://napitkistore.ru/wp-content/uploads/2017/07/twg-breakfast-earl-grey-tea-15.webp"
//        }
//      ]
//    }
//    ''';

Future<String> readJsonFromFile() async {
  // Путь к JSON файлу
  final String jsonFilePath = 'app_2/lib/data/list_of_products.json';

  final File file = File(jsonFilePath);
  final String jsonData = await file.readAsString();

  return jsonData;
}

Future<String> main() async {
  String jsonString = await readJsonFromFile();
  return jsonString;
}

Future<String> def() async {
  String jsonString = await main();
  return jsonString;
}

String jsonString = def() as String;

Map<String, dynamic> jsonData = jsonDecode(jsonString);
List<Item> items = (jsonData['items'] as List<dynamic>)
    .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
    .toList();
