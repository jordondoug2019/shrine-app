import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';

//Checks if user is authenticated 
class AuthGate extends StatelessWidget{
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    //Use StreamBuilder to subscribe to the state of the application and pass the stream to it
    //StreamBuilder builds itself based on the latest snapsho        t of data fromn a Stream 
    //That I pass it. It automatically rebuilds when the stream emit a new snapshot
    return StreamBuilder<User?> (
      //authStateChanges API returns Stream with either the current user 
      //If they are signed in or null if they are not
      stream: FirebaseAuth.instance.authStateChanges(), //will return a Firebase user object if the user has authenticated
      builder: (context, snapshot) {
        if (!snapshot.hasData) { //snapshot.hasData checks if the value from the stream contains the User object
          return SignInScreen(providers: [], //If there user isnt authenticated it will return a Signinscreen widget
          ); //SignInScreen is a widget that comes from the FlutterFire UI Pacckage

        }
        return const HomePage(); //else, it will return to the home screen that only authenticated users can access
      }
    );
  }
}