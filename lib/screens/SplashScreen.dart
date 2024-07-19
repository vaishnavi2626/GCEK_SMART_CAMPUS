// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:trial1/main.dart';
import 'package:trial1/screens/login.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trial1/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  User? user;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    Timer(Duration(seconds: 2), () {
      if(user == null){
        Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));  
      }
      else {
          Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Home()));  
      }
      
    });
  }

    Future<void> checkLoginStatus() async {
    bool isLoggedIn = await AuthManager.isLoggedIn();
    if (isLoggedIn) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
