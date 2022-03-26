import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ipc_jlincar_p1/model/list_products.dart';
import 'product_details_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          backgroundColor: Colors.indigo,
        ),
        body: const FutureList());
  }
}

class FutureList extends StatelessWidget {
  const FutureList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/json/products.json"),
      builder: (context, AsyncSnapshot<String> snapshot){
        if(snapshot.hasData){
          Map<String, dynamic> data = json.decode(snapshot.data!);
          var products = Products.fromJson(data);
          final list = products.products.map((products) {
            return Column(children: [
              const Divider(),
              ListTile(
                trailing: const Icon(Icons.chevron_right, color: Colors.grey, size: 50.0),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(products.name),
                      Text("${products.price}€", style: const TextStyle(color: Colors.grey),),
                    ]),
                leading: Hero(tag: "image_1", child: Image.asset(products.image)),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(
                      name: products.name,
                      price: products.price,
                      description: products.description,
                      image: products.image,
                      //heroTag: ,
                    ),
                  );
                  Navigator.of(context).push(route);
                },
              ),
            ]);
          }).toList();

          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) => list[i],
          );

        }else{
          return const LinearProgressIndicator();
        }
      },

    );
  }
}

/*
class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = products.products.map((products) {
      return Column(children: [
        const Divider(),
        ListTile(
          trailing: const Icon(Icons.chevron_right, color: Colors.grey, size: 50.0),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(products.name),
            Text("${products.price}€", style: const TextStyle(color: Colors.grey),),
          ]),
          leading: Image.asset(products.imgPath),
          onTap: () {
            var route = MaterialPageRoute(
              builder: (context) => ProductDetailsPage(product: , imageRoute: ,),
            );
            Navigator.of(context).push(route);
          },
        ),
      ]);
    }).toList();

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, i) => list[i],
    );
  }
}

*/