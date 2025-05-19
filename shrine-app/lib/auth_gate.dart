import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shrine/category_menu_page.dart';
import 'backdrop.dart';
import 'home.dart';
import 'package:shrine/model/product.dart' as model;

//Checks if user is authenticated
class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  model.Category _currentCategory = model.Category.all;

  void _onCategoryTap(model.Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Use StreamBuilder to subscribe to the state of the application and pass the stream to it
    //StreamBuilder builds itself based on the latest snapsho        t of data fromn a Stream
    //That I pass it. It automatically rebuilds when the stream emit a new snapshot
    return StreamBuilder<User?>(
        //authStateChanges API returns Stream with either the current user
        //If they are signed in or null if they are not
        stream: FirebaseAuth.instance
            .authStateChanges(), //will return a Firebase user object if the user has authenticated
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            final user = FirebaseAuth.instance.currentUser;
            print('👤 Current user: ${user?.email}');

            print("use not signed in, show signin screen");
            //snapshot.hasData checks if the value from the stream contains the User object
            return SignInScreen(
              // //If there user isnt authenticated it will return a Signinscreen widget
              providers: [
                EmailAuthProvider(),
                GoogleProvider(clientId: "385900695408-314lhdadm2kv4180gr08epf638v8e03g.apps.googleusercontent.com")
              ],
              //Builds the header of the screen
              headerBuilder: (context, constraints, shrinkOffset) {
                return Padding(
                    padding: const EdgeInsets.all(20),
                    child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset('assets/diamond.png')));
              },
              subtitleBuilder: (context, action) {
                //builds subtitle on screen (area above login)
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: action == AuthAction.signIn
                        ? const Text("Welcome Back. Please Sign In.")
                        : const Text("Honor Your Shrine. Please sign up."));
              },
              //adds footer information, text, image, etc
              footerBuilder: (context, action) {
                return const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                      "By signing in, you agree to our terms and conditions.",
                      style: TextStyle(color: Colors.grey)),
                );
              },
              //for web or MacOS
              sideBuilder: (context, shrinkOffset) {
                return Padding(
                    padding: const EdgeInsets.all(20),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset('asset/diamond.png'),
                    ));
              },
            ); //SignInScreen is a widget that comes from the FlutterFire UI Pacckage
          } else {
            print("print user signed in ${snapshot.data!.email}");
            return Backdrop(
              currentCategory: _currentCategory,
              frontLayer: HomePage(category: _currentCategory),
              backLayer: CategoryMenuPage(
                  currentCategory: _currentCategory,
                  onCategoryTap: _onCategoryTap),
              frontTitle: const Text('SHRINE'),
              backTitle: const Text('MENU'),
            );
          }
          // return Backdrop(
          //   currentCategory: _currentCategory,
          //   frontLayer: HomePage(category: _currentCategory),
          //   backLayer: CategoryMenuPage(
          //       currentCategory: _currentCategory,
          //       onCategoryTap: _onCategoryTap),
          //   frontTitle: const Text('SHRINE'),
          //   backTitle: const Text('MENU'),
          // );
          // return const HomePage(); //else, it will return to the home screen that only authenticated users can access
        });
  }
}



