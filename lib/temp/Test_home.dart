import 'package:app_2/elements/ProductCard.dart';
import 'package:app_2/network/product_cards_repository.dart';
import 'package:app_2/network/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_2/temp/test.dart';

class TestHome extends StatelessWidget {
  TestHome({super.key});
  final column_of_cards = ProductCardsRepository().loadItemsFromJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
            child: ListTile(
          leading: Image.network(item.imageUrl),
          title: Text(item.title),
          subtitle: Text('${item.price} ${item.currency}'),
        ));
      },
    ));
  }
}
