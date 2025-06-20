// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
//import 'package:shrine/model/products_repository.dart';

import '../model/product.dart';
import 'product_card.dart';

class TwoProductCardColumn extends StatelessWidget {
  const TwoProductCardColumn({
    required this.bottom,
    this.top,
    required this.onProductTap,
    Key? key,
  }) : super(key: key);

  final Product bottom;
  final Product? top;
  final void Function(Product) onProductTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      const spacerHeight = 44.0;

     double heightOfCards = ((constraints.biggest.height - spacerHeight) / 2.0).clamp(0.0, double.infinity);
double heightOfImages = (heightOfCards - ProductCard.kTextBoxHeight).clamp(0.0, double.infinity);

      // Change imageAspectRatio calculation (104)
      double imageAspectRatio = heightOfImages >= 0.0
          ? constraints.biggest.width / heightOfImages
          : 49.0 / 33.0;

      // Replace Column with a ListView (104)
      return ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 28.0),
            child: top != null
                ? GestureDetector(
                    onTap: () => onProductTap(top!),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 550),
                      child: ProductCard(product: top!), 
                    ),
                    ):SizedBox(
                    height: heightOfCards,
            )
            )
           
        ],
      );
    });
  }
}

class OneProductCardColumn extends StatelessWidget {
  const OneProductCardColumn(
      {required this.product, required this.onProductTap, Key? key})
      : super(key: key);

  final Product product;
  final void Function(Product) onProductTap;

  @override
  Widget build(BuildContext context) {
    // Replace Column with a ListView (104)
    return ListView(
      physics: const ClampingScrollPhysics(),
      reverse: true,
      children: <Widget>[
          GestureDetector(
            onTap: () => onProductTap(product), 
            child: ConstrainedBox(
              constraints: const BoxConstraints(
              maxWidth: 550),
              child: ProductCard(
              product: product,
          ),  
            )
            ),
         SizedBox(
          height: 40.0,
        ),
      
      ],
    );
  }
}
