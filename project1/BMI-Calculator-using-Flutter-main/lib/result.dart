import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int? result;
  final bool? isMale;
  final int? Age;
  final String? s;

  BMIResultScreen({
    @required this.result,
    @required this.Age,
    @required this.isMale,
    @required this.s,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender is : ${isMale == true ? "Male" : "Female"}',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "BMI : ${result}  kg/m2 ",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Age : ${Age} ",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "result : ${s} ",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
