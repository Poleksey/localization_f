import 'package:dio/dio.dart';
import 'package:app_2/network/product_model.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class ProductCardsRepository {
  Future<List<dynamic>> loadItemsFromJson() async {
    // Чтение JSON файла
    final jsonString = await rootBundle
        .loadString('app_2/lib/data/list_of_products_large.json');

    List<dynamic> jsonList = jsonDecode(jsonString);
    List<Map<String, dynamic>> mapList =
        List<Map<String, dynamic>>.from(jsonList);

    return mapList;
  }
}
//   Future<List<ProductModel>> getProductsList() async {
//     final response = await Dio().get(' ссылка');

//     // final data = response.data as List< Map<String, dynamic>>;
//     // final dataMap = data.map((e) => ProductModel(
//     //         id: ,
//     //         title: e.key,
//     //         price: e.key,
//     //         currency: e.key,
//     //         imageUrl: e.key))
//     //     .toList();
//     return ProductModel.fromJson(jsonDecode(response.)
//   }
// }

    // // Декодирование JSON строки в Dart объект

    // final Map<String, dynamic> jsonData = json.decode(jsonString);

    // // Извлечение массива из поля "items"
    // final List<dynamic> items = jsonData['items'];
