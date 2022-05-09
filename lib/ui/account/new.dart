// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:shopa/models/products_response.dart';
// import 'package:shopa/ui/widgets/product_widget.dart';
// import 'package:http/http.dart' as http;

// class New extends StatefulWidget {
//   New({
//     Key? key,
//   }) : super(key: key);

//   List<Map<String, dynamic>> products = [
//     {
//       'title': 'Freepods',
//       'image': 'assets/images/p1.png',
//       'price': 20000,
//       'reviews': {'star': 5.0, 'count': 10}
//     },
//     {
//       'title': 'Screwdriver',
//       'image': 'assets/images/p2.png',
//       'price': 30000,
//       'reviews': {'star': 5.0, 'count': 20}
//     },
//     {
//       'title': 'Beats by Dre',
//       'image': 'assets/images/p3.png',
//       'price': 80000,
//       'reviews': {'star': 5.0, 'count': 50}
//     },
//   ];

//   @override
//   State<New> createState() => _NewState();
// }

// class _NewState extends State<New> {
//   late List<ProductsResponse> allProducts;

//   Future<List<ProductsResponse>> getProducts() async {
//     print('we are here');
//     var url = Uri.parse('https://fakestoreapi.com/products');
//     var response = await http.get(url);
//     List result = jsonDecode(response.body);

//     allProducts =
//         (result).map((dynamic e) => ProductsResponse.fromJson(e)).toList();

//     print('done');
//     return allProducts;
//   }

//   @override
//   void initState() {
//     getProducts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Form(
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   suffixIcon: Icon(
//                     Icons.search,
//                     size: 40,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 40),
//             Container(
//               width: 400,
//               height: 230,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   buildSlider(context, 'Get affordable things',
//                       Theme.of(context).primaryColor),
//                   buildSlider(context, 'Get Techy Gadgets here', Colors.purple),
//                   buildSlider(context, 'Whitehat Academy', Colors.black),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40),
//             SizedBox(
//               width: 400,
//               height: 270,
//               child: FutureBuilder(
//                   future: getProducts(),
//                   builder: (context, AsyncSnapshot snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     } else if (snapshot.connectionState ==
//                         ConnectionState.done) {
//                       if (snapshot.hasError) {
//                         return Text('An error occured ${snapshot.error} ');
//                       } else if (snapshot.hasData) {
                        
//                         return ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: widget.products.length,
//                           itemBuilder: ((context, index) {
//                             ProductsResponse product = snapshot.data[index];
//                             return SizedBox(
//                               width: 195,
//                               child: ProductWidget(product: product),
//                             );
//                           }),
//                         );
//                       } else {
//                         return Text('Empty data');
//                       }
//                     } else {
//                       return Text('${snapshot.connectionState}');
//                     }
//                   }),
//             ),
//             SizedBox(height: 30),
//             Text('Latest News', style: Theme.of(context).textTheme.bodyText1),
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: 5,
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   child: ListTile(
//                     contentPadding: EdgeInsets.all(0),
//                     title: Text(
//                       'App development is interesting in whitehat',
//                       style: Theme.of(context).textTheme.bodyText1,
//                     ),
//                     subtitle: Text('This is a subtitle'),
//                     trailing: Container(
//                       width: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/Image.png'),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Container buildSlider(BuildContext context, String title, Color color) {
//     return Container(
//       width: 300,
//       height: 200,
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Center(
//         child: Text(
//           title,
//           style: Theme.of(context).textTheme.headline5?.copyWith(
//                 color: Colors.white,
//               ),
//         ),
//       ),
//     );
//   }
// }
