// ignore_for_file: prefer_const_constructors

import 'package:app_2/elements/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Название товара'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          // width: 405,
          child: Column(children: [
            Container(
              child: Image.asset(
                'assets/images/01.jpg',
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
                          margin: EdgeInsets.only(top: 22, right: 260),
                          child: Text(
                            'О товаре:',
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
                              '|ОСНОВНАЯ ИНФОРМАЦИЯ ДЛЯ ОПИСАНИЯ ТОВАРА|     а также много много много много текста— вид письменной школьной работы, представляющий изложение своих мыслей и чувств[источник не указан 631 день] по заданной теме.Такая методика существует для закрепления и лучшего осмысления материала.B учебном процессе чаще всего используются сочинения по литературе (сочинения по тексту), сочинения-миниатюры, сочинения-рассуждения (эссе) на заданные темы (например, «Как я провёл лето», «Каким я хочу быть»), сочинения по картине, сочинения-описания (например, какой-то личности).Традиционно выпускной экзамен по русскому языку и литературе в средних учебных заведениях Российской империи, затем СССР и Российской Федерации проводился в виде сочинения на литературную тему. Однако после введения ЕГЭ важной его частью стало итоговое сочинение[1][стиль]. А именно, теперь школьникам предлагается выполнить задание C1 — написать эссе по приведенному литературному или публицистическому отрывку.  ',
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
