import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trial1/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: FutureBuilder<bool>(
      //     future: AuthManager.isLoggedIn(),
      //     builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       // Show a loading screen while checking the login status
      //       return CircularProgressIndicator();
      //     } else {
      //       if (snapshot.data == true) {
      //         // User is already logged in, navigate to the main screen
      //         return Home();
      //       } else {
      //         // User is not logged in, navigate to the login screen
      //         return SplashScreen();
      //       }
      //     }
      //     }
      //   ),
    );
  }
}
