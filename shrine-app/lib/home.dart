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
import 'package:shrine/supplemental/asymmetric_view.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({this.category = Category.all, Key? key})
      //required Category currentCategory,
      //required void Function(Category category) onCategoryTap})
      : super(key: key);
  //add a variable for category
  final Category category;

  // Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // Return an AsymmetricView (104)
    //  Return an AsymmetricView (104)
    return AsymmetricView(products: ProductsRepository.loadProducts(category));
    // Pass Category variable to AsymmetricView (104)
  }
}

