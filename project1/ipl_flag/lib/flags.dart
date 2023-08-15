import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mumbai_Indians extends StatelessWidget {
  static String routeName = '/mumbai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mumbai Indians Flag'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/c/cd/Mumbai_Indians_Logo.svg/1200px-Mumbai_Indians_Logo.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Royal_Challengers_Bangalore extends StatelessWidget {
  static String routeName = '/rcb';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Royal Challengers Bangalore Flag'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/2/2a/Royal_Challengers_Bangalore_2020.svg/1200px-Royal_Challengers_Bangalore_2020.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Chennai_Super_Kings extends StatelessWidget {
  static String routeName = '/csk';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chennai Super Kings Flag'),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Chennai_Super_Kings_Logo.svg/1200px-Chennai_Super_Kings_Logo.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Kolkata_Knight_Riders extends StatelessWidget {
  static String routeName = '/kkr';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kolkata Knight Riders Flag'),
        backgroundColor: Colors.purple[800],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Kolkata_Knight_Riders_Logo.svg/1200px-Kolkata_Knight_Riders_Logo.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Rajasthan_Royals extends StatelessWidget {
  static String routeName = '/rrr';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rajasthan_Royals Flag'),
        backgroundColor: Color.fromARGB(255, 241, 16, 211),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Rajasthan_Royals_Logo.svg/1200px-Rajasthan_Royals_Logo.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Lucknow_Super_Giants extends StatelessWidget {
  static String routeName = '/lsg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lucknow_Super_Giants Flag'),
        backgroundColor: Color.fromARGB(255, 7, 241, 237),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://s3images.zee5.com/wp-content/uploads/2022/01/Capturelshkjsd2022013111314320220131113747.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class Sunrisers_Hyderabad extends StatelessWidget {
  static String routeName = '/srh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sunrisers_Hyderabad  Flag'),
        backgroundColor: Color.fromARGB(255, 241, 120, 7),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://www.sunrisershyderabad.in/dist/img/srh-logo.gif',
            ),
          ],
        ),
      ),
    );
  }
}

class Gujarat_Titans extends StatelessWidget {
  static String routeName = '/gt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gujarat Titans Flag'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Gujarat_Titans_Logo.svg/1200px-Gujarat_Titans_Logo.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Delhi_Capitals extends StatelessWidget {
  static String routeName = '/dc';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delhi_Capitals Flag'),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/2/2f/Delhi_Capitals.svg/1200px-Delhi_Capitals.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}

class Punjab_Kings extends StatelessWidget {
  static String routeName = '/pk';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punjab_Kings Flag'),
        backgroundColor: Colors.red[400],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/thumb/d/d4/Punjab_Kings_Logo.svg/1200px-Punjab_Kings_Logo.svg.png',
            ),
          ],
        ),
      ),
    );
  }
}
