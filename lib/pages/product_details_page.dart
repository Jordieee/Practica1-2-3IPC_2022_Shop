import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({Key? key, required this.product, required this.heroTag}) : super(key: key);

  String product;
  String heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(product),
      ),
      body:
        Image.asset(imageRoute)
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