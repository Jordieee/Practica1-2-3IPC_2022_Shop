import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({
    Key? key,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    //required this.heroTag
  }) : super(key: key);

  String name;
  double price;
  String description;
  String image;
  //String heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Product Details"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.grey
        ),
      )

    );
  }
}
/*
//Almacena el estado
class MyProgressWidget extends StatefulWidget {
  const MyProgressWidget({Key? key}) : super(key: key);

  @override
  _MyProgressWidgetState createState() => _MyProgressWidgetState();
}

//Almacena la info de cómo se pinta el widget
class _MyProgressWidgetState extends State<MyProgressWidget> {
  double progressValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progressValue,
    );
  }
}


class FutureWidget extends StatelessWidget {
  const FutureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: helloDelayed("Marimila"),
      builder: (context, AsyncSnapshot<String> snapshot){
        if(snapshot.hasData){
          return Text(snapshot.data!);
        }else{
          return LinearProgressIndicator();
        }
      },

    );
  }
}

Future<String> helloDelayed(String name){
  return Future.delayed(
    const Duration(seconds: 5),
      () { return "Hello, $name"; },
  );
}*/