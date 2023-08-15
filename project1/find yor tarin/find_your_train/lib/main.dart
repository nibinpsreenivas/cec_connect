import "package:animated_splash_screen/animated_splash_screen.dart";
import 'package:find_your_train/screens/trainstatusscreen.dart';
import "package:flutter/material.dart";

import 'package:find_your_train/datascreen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import "trainstatus.dart";

//import ""
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SizedBox(
            height: 200,
            child: Image.asset(
              "lib/logo.png",
              fit: BoxFit.contain,
            )),
        nextScreen: Trainstatusscreen(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}
