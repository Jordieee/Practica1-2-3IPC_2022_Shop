import 'package:flutter/material.dart';
import 'package:ipc_jlincar_p1/model/list_products.dart';
import 'product_details_page.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          backgroundColor: Colors.indigo,
        ),
        body: const MyList());
  }
}

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = Product.initial.map((product) {
      return Column(children: [
        const Divider(),
        Container(
          child: ListTile(
            trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(product.name),
              Text("${product.price}€", style: const TextStyle(color: Colors.grey),),
            ]),
            leading: Image.asset(product.iconPath),
            onTap: () {
              var route = MaterialPageRoute(
                builder: (context) => ProductDetailsPage(),
              );
              Navigator.of(context).push(route);
            },
          ),
        ),
      ]);
    }).toList();

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, i) => list[i],
    );
  }
}
