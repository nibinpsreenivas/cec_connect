import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(
      mainlogin(),
    );

class mainlogin extends StatelessWidget {
  const mainlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
