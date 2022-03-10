import 'package:flutter/material.dart';
import 'package:ipc_jlincar_p1/model/product_details_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'Products'
          )
      ),
        body: const MyList()
    );

  }
}


class MyList extends StatelessWidget{
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final list = Product.initial.map((pkmn){
      return Column(children: [
        ListTile(
          trailing: Text("Nº ${pkmn.price}"),
          title: Text(pkmn.name),
          leading: const FaIcon(FontAwesomeIcons.dog),
          onTap: () {},
        ),

        const Divider()

      ]);
    }).toList();

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, i) => list[i],
    );
  }
}