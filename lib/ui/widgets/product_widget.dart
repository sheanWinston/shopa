// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa/models/products_response.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  ProductsResponse product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Center(
                child: Image.network(product.image ?? ''),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '${product.title}',
              maxLines: 2,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 5),
            Text(
              'N${product.price}',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
    );
  }
}
