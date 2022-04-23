// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 400,
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildSlider(context, 'Get affordable things',
                        Theme.of(context).primaryColor),
                    buildSlider(
                        context, 'Get Techy Gadgets here', Colors.purple),
                    buildSlider(context, 'Whitehat Academy', Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 40),

              SizedBox(
                width: 400,
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: ((context, index) {
                    print(products[index]);
                    return SizedBox(
                      width: 195,
                      child: Card(
                        margin: EdgeInsets.all(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(products[index]['image']),
                              ),
                              SizedBox(height: 20),
                              Text(
                                products[index]['title'],
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'N${products[index]['price']}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: Colors.red,
                                    ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.yellow[800],
                                  ),
                                  Expanded(
                                    child: Text(
                                      '4.6',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      '90 Reviews',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Icon(Icons.more_vert, size: 15)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              // Container(
              //   width: 400,
              //   height: 300,
              //   child: GridView.builder(
              //     itemCount: images.length,
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 4,
              //     ),
              //     itemBuilder: (context, index) {
              //       return Image.network(
              //           'https://picsum.photos/250?image=${images[index]}');
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Container buildSlider(BuildContext context, String title, Color color) {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
