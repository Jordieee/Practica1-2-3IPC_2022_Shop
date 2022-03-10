import 'package:flutter/material.dart';

class Product {
  late String name;
  late double price;
  late String? iconPath;

  static final List<Product> initial = [
    Product(name: "Oculus Quest 2", price: 10.50, iconPath: "assets/img/bulbasaur.svg"),
    Product(name: "Oculus Quest 2", price: 20.50, iconPath: "assets/img/bulbasaur.svg"),
    Product(name: "Oculus Quest 2", price: 30.50, iconPath: "assets/img/bulbasaur.svg"),
    Product(name: "Oculus Quest 2", price: 40.50, iconPath: "assets/img/charmander.svg"),
    Product(name: "Oculus Quest 2", price: 50.50, iconPath: "assets/img/charmander.svg"),
    Product(name: "Oculus Quest 2", price: 60.50, iconPath: "assets/img/charmander.svg"),
    Product(name: "Oculus Quest 2", price: 70.50, iconPath: "assets/img/squirtle.svg"),
    Product(name: "Oculus Quest 2", price: 80.50, iconPath: "assets/img/squirtle.svg"),
    Product(name: "Oculus Quest 2", price: 90.50, iconPath: "assets/img/squirtle.svg"),
  ];

  Product({
    required this.name,
    required this.price,
    this.iconPath});
}



