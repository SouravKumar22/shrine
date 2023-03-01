import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shrine/widget.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: <Widget>[
          productCard('assets/product/hat.png', 'Hat', '\$12'),
          productCard('assets/product/whitney_belt.png', 'Whitney Belt', '\$5'),
          productCard('assets/product/vagabond_sack.png', 'Vagabond Sack', '\$62'),
          productCard('assets/product/stella.png', 'Stella', '\$27'),
          productCard('assets/product/strut_earrings.png', 'Struct Earrings', '\$22'),
          productCard('assets/product/photo.jpg', 'Sourav Kumar', '21MCA2040'),

        ],
      ),
    );
  }

}