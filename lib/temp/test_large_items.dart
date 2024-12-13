import 'dart:convert';
import 'package:dio/dio.dart';

class Item {
  final String id;
  final String title;
  final String price;
  final String currency;
  final String description;
  final String imageUrl;

  Item({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.description,
    required this.imageUrl,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      currency: json['currency'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}

Future<List<Item>> getItemsList_1() async {
  final response = await Dio().get(
    'https://raw.githubusercontent.com/Poleksey/localization_f/refs/heads/main/lib/data/list_of_products_large.json',
  );

  final jsonData = jsonDecode(response.data) as Map<String, dynamic>;

  return (jsonData['items'] as List<dynamic>)
      .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
      .toList();
}






// Future<Map<String, dynamic>> fetchJsonData() async {
//   final response = await http.get(Uri.parse(
//       'https://github.com/Poleksey/localization_f/blob/main/lib/data/list_of_products_large.json'));

//   if (response.statusCode == 200) {
//     return jsonDecode(response.body) as Map<String, dynamic>;
//   } else {
//     throw Exception('Failed to load JSON data');
//   }
// }

// Future<String> getItemsList() async {
//   final response = await Dio().get(
//       'https://github.com/Poleksey/localization_f/blob/main/lib/data/list_of_products_large.json');
//   return response.toString();
// }

// strange() async {
//   String jsonData_1 = await getItemsList();
//   return jsonData_1;
// }

// String jsond = jsonString.;
// Map<String, dynamic> jsonData = jsonDecode(jsonString);

// List<Item> items = (jsonData['items'] as List<dynamic>)
//     .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
//     .toList();



// String jsonString = '''
//    {
//   "items": [
 
//     {
//       "id": "1",
//       "title": "Металлический кубик",
//       "price": "1000",
//       "currency": "₽",
//       "description": "Металлический куб - это трехмерный геометрический объект, каждая из шести граней которого представляет собой идеально ровный квадратный лист металла. Все ребра куба равны, их длина одинакова, что делает форму максимально симметричной. Поверхность куба имеет гладкую, зеркальную текстуру, которая отражает окружающие предметы. Металл, из которого изготовлен куб, может варьироваться - это может быть сталь, медь, алюминий или другой прочный, плотный металлический сплав.Сочетание строгих геометрических линий и гладкой блестящей поверхности придает металлическому кубу солидный, монолитный вид. Он выглядит надежным, долговечным и обладает ощущением массивности, несмотря на свои компактные размеры",
//       "imageUrl": "https://atlas-content-cdn.pixelsquid.com/stock-images/silver-cube-3AaJe6D-600.jpg"
//     },
//     {
//       "id": "2",
//       "title": "Breakfast Earlgrey",
//       "price": "200",
//       "currency": "₽",
//       "description": "Earl Grey Breakfast - это изысканный и многогранный черный чай, который сочетает в себе классические ноты традиционного Earl Grey и более насыщенные, крепкие оттенки завтрачного чая.",
//       "imageUrl": "https://napitkistore.ru/wp-content/uploads/2017/07/twg-breakfast-earl-grey-tea-15.webp"
//     },
//     {
//       "id": "3",
//       "title": "Лампочка",
//       "price": "289",
//       "currency": "₽",
//       "description": "Энергосберегающая светодиодная лампа нового поколения обеспечивает равномерное и мягкое освещение, подходящее для любого помещения. Благодаря высокому качеству и долговечности, лампа прослужит вам долгие годы, при этом значительно экономя электроэнергию по сравнению с традиционными лампами накаливания. Простота установки и безопасность в использовании делают эту лампу идеальным решением для вашего дома или офиса.",
//       "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAaaRtuwCq0Q7TT9Kflz7-bhHDDIbZ3BZfrA&s"
//     },
//     {
//       "id": "4",
//       "title": "Валерианы настойка",
//       "price": "90",
//       "currency": "₽",
//       "description": "Валерианка - традиционное натуральное средство, которое веками помогает справиться со стрессом и тревогой. Данный продукт содержит высококачественный экстракт корня валерианы, который мягко и безопасно оказывает успокаивающее действие на нервную систему, улучшает сон и снимает мышечное напряжение. Не является лекарством. Перед употреблением проконсультируйтесь с врачом.",
//       "imageUrl": "https://images.apteka.ru/original_d18e7d7d-b5ff-4397-a01f-bd66465b0cc1.jpeg"
//     },
//     {
//       "id": "5",
//       "title": "Кофе растворимый NESCAFÉ",
//       "price": "730",
//       "currency": "₽",
//       "description": "Вкусный 100% натуральный растворимый кофе с нежной пенкой",
//       "imageUrl": "https://ir.ozone.ru/s3/multimedia-1-u/wc1000/7216994610.jpg"
//     },
//     {
//       "id": "6",
//       "title": "Сунь Цзы Искусство войны ",
//       "price": "1200",
//       "currency": "₽",
//       "description": "Бессмертная классика. Данное издание содержит полный перевод трактата Сунь-Цзы с подробными комментариями. ",
//       "imageUrl": "https://www.combook.ru/pictures/4/9/0_11866179.jpg"
//     },
//     {
//       "id": "7",
//       "title": "Армированный скотч",
//       "price": "400",
//       "currency": "₽",
//       "description": "Благодаря своим характеристикам, армированный скотч является незаменимым помощником в решении множества задач, где требуется надежное, прочное и универсальное клеящее средство.",
//       "imageUrl": "https://pack-land.ru/components/com_jshopping/files/img_products/full_armirovannyj-skotch.jpg"
//     }
//   ]
// }
//    ''';


// final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

// List<Item> getItemsList_3() {
//   return (jsonData['items'] as List<dynamic>)
//       .map((itemData) => Item.fromJson(itemData as Map<String, dynamic>))
//       .toList();
// }

