import 'package:flutter/material.dart';
import 'package:shrine/colors.dart';
import 'package:shrine/login.dart';
import 'model/product.dart';
import 'model/products_repository.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(product.name)),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            Image.asset(product.assetName, package: product.assetPackage),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
      
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Text(product.name,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text("\$${product.price}",
                      style: TextStyle(fontSize: 20, color: kShrinePurple)),
                  SizedBox(height: 16),
                  
                  ElevatedButton(onPressed: () {}, child: Text('Add to Cart'))
                ],
              ),
            ),
          ],
        ))));
  }
}
