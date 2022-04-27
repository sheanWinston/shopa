// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa/ui/widgets/product_widget.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Map<String, dynamic>> products = [
    {
      'title': 'Freepods',
      'image': 'assets/images/p1.png',
      'price': 20000,
      'reviews': {'star': 5.0, 'count': 10}
    },
    {
      'title': 'Screwdriver',
      'image': 'assets/images/p2.png',
      'price': 30000,
      'reviews': {'star': 5.0, 'count': 20}
    },
    {
      'title': 'Beats by Dre',
      'image': 'assets/images/p3.png',
      'price': 80000,
      'reviews': {'star': 5.0, 'count': 50}
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Shop Page', style: Theme.of(context).textTheme.headline4),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1 / 1.4,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductWidget(product: products[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
