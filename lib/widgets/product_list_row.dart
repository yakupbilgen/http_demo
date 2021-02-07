import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

// ignore: must_be_immutable
class ProductListRowWidget extends StatelessWidget {
  Product product;
  ProductListRowWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.asset('../images/flutter.png'),
              height: 150,
              width: MediaQuery.of(context).size.width /
                  2, //Ekran genişliğinin yarısı
            ),
            Text(product.productName),
            Text(
              product.unitPrice.toString() + " ₺",
              style: TextStyle(fontSize: 18, color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
