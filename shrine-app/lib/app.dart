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
//import 'backdrop.dart';
//import 'home.dart';
//import 'login.dart';
import 'colors.dart';
//import 'model/product.dart';
import 'supplemental/cut_corners_border.dart';
//import 'category_menu_page.dart';
import 'auth_gate.dart';

// Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  State<ShrineApp> createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {



  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      //1st screen is the sign in page
       home: AuthGate(),
      theme: _kShrineTheme,
     
    );
  }
}

// Build a Shrine Theme (103)
//Build UI theme using brand colors
final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePurple,
      secondary: kShrinePurple,
      error: kShrineErrorRed,
    ),
    scaffoldBackgroundColor: kShrineSurfaceWhite,
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrinePink100,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: kShrineBrown900,
      backgroundColor: kShrinePink100,
    ),
    inputDecorationTheme: const InputDecorationTheme(
        border: CutCornersBorder(),
        focusedBorder: CutCornersBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: kShrinePurple,
          ),
        ),
        floatingLabelStyle: TextStyle(
          color: kShrinePurple,
        )),
  );
}

// Build a Shrine Text Theme (103)
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 18.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
          fontFamily: 'Rubik',
          displayColor: kShrineBrown900,
          bodyColor: kShrineBrown900);
}



// initialRoute: '/',
      //onGenerateRoute: callback function that Flutter calls when it needs to build a route
      //gives full control to dyanmically build routes at runtime w/access to your instance variables and methods
     // onGenerateRoute: (RouteSettings settings) {
        //switch (settings.name) {

        //case '/': 
        //return MaterialPageRoute(builder: (_) => const AuthGate());
        //  Change to a Backdrop with a HomePage frontLayer (104)
        //case '/home':
        //return MaterialPageRoute(
          //builder: (_)  => Backdrop(
              //Make currentCategory field take _currentCategory (104)
              //currentCategory: _currentCategory,
              //  Pass _currentCategory for frontLayer (104)
              //frontLayer: HomePage(
              //  category: _currentCategory,
             // ),
              //  Change backLayer field value to CategoryMenuPage (104)
             // backLayer: CategoryMenuPage(
                  //currentCategory: _currentCategory,
                 // onCategoryTap: _onCategoryTap
                 // ),
             // frontTitle: const Text('SHRINE'),
             // backTitle: const Text('MENU'),
            //),
       // );
       // default:
        //return null;
      //  }
      //},
      //  Customize the theme (103)