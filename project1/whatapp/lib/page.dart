import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/myhome.dart';

class page extends StatelessWidget {
  final String name;
  const page({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Color.fromARGB(255, 37, 211, 102),
      ),
      body: ListView(
        children: [
          Image.asset('lib/asset/screen1.jpg'),
          Image.asset('lib/asset/screen.jpg'),
        ],
      ),
    );
  }
}
