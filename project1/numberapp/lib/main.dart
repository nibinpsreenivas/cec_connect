import 'package:flutter/material.dart';

import 'apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FACT NUM',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _inputcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://wallpaperaccess.com/full/1477279.jpg'),
                fit: BoxFit.fill),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                child: TextFormField(
                  cursorColor: Colors.white,
                  controller: _inputcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter a number",
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final number = _inputcontroller.text;
                  getnumber(num: number);
                },
                child: const Text("submit "),
              )
            ],
          ),
        )),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
