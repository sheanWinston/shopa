// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa/ui/account/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  "Welcome to Shopa",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 10),
                Text(
                  'The best online shopping store',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Text(
                      "Login",
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Forgot password',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      'Sign up',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
