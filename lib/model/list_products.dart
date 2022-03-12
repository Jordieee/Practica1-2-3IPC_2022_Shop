
class Product {
  late String name;
  late double price;
  late String iconPath;

  static final List<Product> initial = [
    Product(name: "Oculus Quest 2", price: 10.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 20.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 30.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 40.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 50.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 60.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 70.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 80.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 90.50, iconPath: "assets/img/oculus.jpg"),
    Product(name: "Oculus Quest 2", price: 100.50, iconPath: "assets/img/oculus.jpg"),

  ];

  Product({
    required this.name,
    required this.price,
    required this.iconPath});
}



