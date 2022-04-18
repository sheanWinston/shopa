// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Text(
            "Welcome to Shopa",
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: 10),
          Text('The best online shopping store'),
          SizedBox(height: 50),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Full Name',
              label: Text('Full Name'),
            ),
          )
        ],
      ),
    ));
  }
}
