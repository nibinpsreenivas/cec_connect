import 'dart:math';
import 'result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BMICalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool isMale = true;
  double height = 0.0;
  int weight = 20;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Center(
            child: Text('BMI Calculator'))
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Height",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${height.round()}',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              Slider(
                                  value: height,
                                  min: 0.0,
                                  max: 200.0,
                                  onChanged: (value) {
                                    setState(() {
                                      height = value;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '${weight}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  FloatingActionButton(

                                    mini: true,

                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(Icons.add),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${age}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(Icons.add),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
                child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.purple,
                                size: 140,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(fontSize: 20),
                              ),
                              // Icon(Icon)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: isMale == true ? Colors.purpleAccent : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          height: 200,
                          child: Column(
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.purple,
                                size: 140,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(fontSize: 20),
                              ),
                              // Icon(Icon)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: isMale == false ? Colors.purpleAccent : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            )),


            MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                String s='no';
                if(result <=18.5)
                  {
                    s='underweight';
                  }
                else if(result >18.5 && result <=25)
                  {
                    s='normal';
                  }
                else if(result >25 && result <=30)
                  {
                    s='overweight';
                  }
                else if(result >30)
                {
                  s='obesity';
                }
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      Age: age,
                      isMale: isMale,
                      s: s,
                      result: result.round(),
                    ),
                  ),
                );
              },
              child: Text("Calculate"),
              color: Colors.purple,
            )
          ],
        ));
  }
}
