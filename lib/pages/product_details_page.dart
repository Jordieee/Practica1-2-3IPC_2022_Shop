import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({
    Key? key,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.heroTag,
  }) : super(key: key);

  String name;
  double price;
  String description;
  String image;
  String heroTag;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(flex:2),
          Hero(
            tag: heroTag,
            child: Container(
              width: 360,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage(image)
                )
              ),
            ),
          ),
            const Spacer(flex:2,),
            Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
            ),
                ),
                child: SizedBox(
                  width: 100,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(flex: 1,),
                      Text(name,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      const Spacer(flex: 1,),
                      Text(price.toString() + "€",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      const Spacer(flex: 1,),
                      Text(description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,

                          )),
                      const Spacer(flex: 1,),
                    ],
                  ),
                )

            )

          ],
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