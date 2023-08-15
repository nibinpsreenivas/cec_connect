import 'package:flutter/material.dart';
import 'package:profile/UI/Home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

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
      title: 'Nibin PSreenivas',
      color: Colors.black,
      home: AnimatedSplashScreen(
        splash: Container(
            height: 800,
            width: 800,
            child: Image.asset(
              "IMAGE/logo.gif",
              //fit: BoxFit.fitHeight,
            )),
        nextScreen: Home(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}
