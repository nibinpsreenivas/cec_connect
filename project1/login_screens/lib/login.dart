import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();
  var userData = {};
  bool isLoading = false;
  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  final emailfield = TextFormField(
    autofocus: false,
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value!.isEmpty) {
        return ("Please Enter Your Email");
      }
      // reg expression for email validation
      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]+.[a-z]")
          .hasMatch(value)) {
        return ("Please Enter a valid cec mail");
      }
      return null;
    },
    onSaved: (value) {},
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Email ",
        hintStyle: TextStyle(color: Colors.grey[400])),
  );

  final passwordfield = TextFormField(
    autofocus: false,
    obscureText: true,
    validator: (value) {
      RegExp regex = new RegExp(r'^.{6,}$');
      if (value!.isEmpty) {
        return ("Please Enter Password");
      }
      if (!regex.hasMatch(value)) {
        return ("Enter Valid Password (Min. 6 Character)");
      }
      return null;
    },
    onSaved: (value) {},
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey[400])),
  );
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-1.png'))),
                          ),
                        ),
                        Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-2.png'))),
                          ),
                        ),
                        Positioned(
                            child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey))),
                                    child: emailfield),
                                Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: passwordfield)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(140, 255, 142, 158),
                                  Color.fromARGB(255, 255, 89, 123),
                                ])),
                            child: GestureDetector(
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            child: GestureDetector(
                              child: Center(
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 89, 123),
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: GestureDetector(
                              child: Center(
                                child: Text(
                                  "Don't have an account? SignUp",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 89, 123),
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
