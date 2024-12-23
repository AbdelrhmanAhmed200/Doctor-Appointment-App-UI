import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_7/MainScreen.dart';  // For the delay functionality

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds and then navigate to the home screen
    Timer(Duration(seconds: 3), () {
     
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),  
      body: Center(
        child: Image.asset("images/linedheart.png"),  
      ),
    );
  }
}