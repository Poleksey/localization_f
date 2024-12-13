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

String jsonString = '''
   {
  "items": 
 [
    {
      "id": "1",
      "title": "Металлический кубик",
      "price": "1000",
      "currency": "₽",  
      "imageUrl": "https://atlas-content-cdn.pixelsquid.com/stock-images/silver-cube-3AaJe6D-600.jpg"
    },
    {
      "id": "2",
      "title": "Breakfast Earlgrey",
      "price": "200",
      "currency": "₽",
      "imageUrl": "https://napitkistore.ru/wp-content/uploads/2017/07/twg-breakfast-earl-grey-tea-15.webp"
    },

    {
      "id": "3",
      "title": "Лампочка",
      "price": "289",
      "currency": "₽",
       "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAaaRtuwCq0Q7TT9Kflz7-bhHDDIbZ3BZfrA&s"
    },
    {
      "id": "4",
      "title": "Валерианы настойка",
      "price": "90",
      "currency": "₽",
      "imageUrl": "https://images.apteka.ru/original_d18e7d7d-b5ff-4397-a01f-bd66465b0cc1.jpeg"
    },
    {
      "id": "5",
      "title": "Кофе NESCAFÉ ",
      "price": "730",
      "currency": "₽",
      "imageUrl": "https://ir.ozone.ru/s3/multimedia-1-u/wc1000/7216994610.jpg"
    },
    {
      "id": "6",
      "title": "Сунь Цзы Искусство войны",
      "price": "1200",
      "currency": "₽",
      "imageUrl": "https://www.combook.ru/pictures/4/9/0_11866179.jpg"
    },
    {
      "id": "7",
      "title": "Армированный скотч",
      "price": "400",
      "currency": "₽",
      "imageUrl": "https://pack-land.ru/components/com_jshopping/files/img_products/full_armirovannyj-skotch.jpg"
    }
  ]
}

   ''';

// Map<String, dynamic> jsonData = jsonDecode(jsonString);
// List<Item> items = (jsonData['items'] as List<dynamic>)
//     .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
//     .toList();

// Future<String> readJsonFromFile() async {
//   // Путь к JSON файлу
//   final String jsonFilePath = 'path/to/your/json/file.json';

//   // Чтение содержимого файла
//   final File file = File(jsonFilePath);
//   final String jsonData = await file.readAsString();

//   return jsonData;
// }

// void main() async {
//   String jsonString = await readJsonFromFile();
//   // print(jsonString);
// }
// String jsonHui = await  File('app_2/lib/data/list_of_products.json').readAsString();

Map<String, dynamic> jsonData = jsonDecode(jsonString);
List<Item> items = (jsonData['items'] as List<dynamic>)
    .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
    .toList();
