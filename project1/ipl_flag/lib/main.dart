import 'package:flutter/material.dart';
import 'flags.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        Mumbai_Indians.routeName: (context) => Mumbai_Indians(),
        Royal_Challengers_Bangalore.routeName: (context) =>
            Royal_Challengers_Bangalore(),
        Chennai_Super_Kings.routeName: (context) => Chennai_Super_Kings(),
        Kolkata_Knight_Riders.routeName: (context) => Kolkata_Knight_Riders(),
        Rajasthan_Royals.routeName: (context) => Rajasthan_Royals(),
        Lucknow_Super_Giants.routeName: (context) => Lucknow_Super_Giants(),
        Sunrisers_Hyderabad.routeName: (context) => Sunrisers_Hyderabad(),
        Gujarat_Titans.routeName: (context) => Gujarat_Titans(),
        Delhi_Capitals.routeName: (context) => Delhi_Capitals(),
        Punjab_Kings.routeName: (context) => Punjab_Kings(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'IPL Teams Flags',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Mumbai_Indians.routeName);
                },
                child: Text(
                  'Mumbai_Indians',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, Royal_Challengers_Bangalore.routeName);
                },
                child: Text(
                  'Royal_Challengers_Bangalore',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.red),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Chennai_Super_Kings.routeName);
                },
                child: Text(
                  'Chennai_Super_Kings',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.yellow),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Kolkata_Knight_Riders.routeName);
                },
                child: Text(
                  ' Kolkata_Knight_Riders',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple[800]),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Rajasthan_Royals.routeName);
                },
                child: Text(
                  ' Rajasthan_Royals',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 244, 19, 184)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Lucknow_Super_Giants.routeName);
                },
                child: Text(
                  'Lucknow_Super_Giants',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 7, 241, 237),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Sunrisers_Hyderabad.routeName);
                },
                child: Text(
                  'Sunrisers_Hyderabad',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 241, 120, 7),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Gujarat_Titans.routeName);
                },
                child: Text(
                  'Gujarat Titans',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Delhi_Capitals.routeName);
                },
                child: Text(
                  'Delhi_Capitals',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue[300],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Punjab_Kings.routeName);
                },
                child: Text(
                  'Punjab_Kings',
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red[400],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
