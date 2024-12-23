import 'package:flutter/material.dart';

import 'package:flutter_application_7/SplashScreen.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Doctor App",
        home: SplashScreen(),

    );
  }

}