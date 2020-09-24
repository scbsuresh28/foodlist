import 'package:flutter/material.dart';
import 'package:foodlist/ShoppingList.dart';
import 'package:foodlist/product/Product.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Food Items List App',
    home: new ShoppingList(product:
    [
      new Product('Red Rice 75',false),
      new Product('Mushroom Gravy',false),
      new Product('Keerai Poriyal',false),
      new Product('Keerai Gravy',false),
      new Product('Banana Stem Poriyal',false),
      new Product('Ladiesfinger Poriyal',false),

    ],),
  ));
}