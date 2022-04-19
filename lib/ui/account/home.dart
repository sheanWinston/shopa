// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mega Mall',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 29,
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(),
    );
  }
}
