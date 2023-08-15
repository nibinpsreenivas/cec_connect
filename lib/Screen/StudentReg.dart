import 'dart:ffi';
import 'dart:typed_data';

import 'package:cec_connect/Screen/home2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cec_connect/Screen/HomeScreen.dart';
import 'package:cec_connect/Screen/Skills.dart';
import 'package:cec_connect/model/user_model.dart' as model;
import 'package:cec_connect/resources/StorageMethods.dart';
import 'package:cec_connect/resources/auth_methods.dart';
import 'package:cec_connect/utils/utils.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final photoNameEditingController = new TextEditingController();
  final firstNameEditingController = new TextEditingController();
  final SecondNameEditingController = new TextEditingController();
  final UIDNameEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmNameEditingController = new TextEditingController();
  final phoneController = new TextEditingController();
  final SkillController = new TextEditingController();
  final linkedinController = new TextEditingController();
  final githubController = new TextEditingController();
  final semController = new TextEditingController();
  final ClassController = new TextEditingController();
  final DivisionController = new TextEditingController();

  String? photoUrl;
  bool isLoading = false;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final photofield = TextFormField(
      autofocus: false,
      controller: photoNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        photoNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe043, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "photo url",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final firstfield = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe043, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final secfield = TextFormField(
      autofocus: false,
      controller: SecondNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Last Name cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        SecondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe043, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final UIDfield = TextFormField(
      autofocus: false,
      controller: UIDNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]+.[a-z]")
            .hasMatch(value)) {
          return ("Please Enter a valid Mail");
        }
        return null;
      },
      onSaved: (value) {
        UIDNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe043, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "UID",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final phonefield = TextFormField(
      autofocus: false,
      controller: phoneController,
      keyboardType: TextInputType.number,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{10,10}');
        if (value!.isEmpty) {
          return ("Please Enter phone number");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter 10 digit in it");
        }
        return null;
      },
      onSaved: (value) {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe4a2, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Phone Number (10 Digits)",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final skillfield = TextFormField(
      autofocus: false,
      controller: SkillController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        SkillController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe37b, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter your skills (Use Hashtags)",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final linkedin = TextFormField(
      autofocus: false,
      controller: linkedinController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        linkedinController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe37b, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter your linkedin url ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final github = TextFormField(
      autofocus: false,
      controller: githubController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        githubController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe37b, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter your github url ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final sem = TextFormField(
      autofocus: false,
      controller: semController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        semController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe37b, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter your sem(s1,s2,s3,s4,s5,s6,s7,s8) ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final Class = TextFormField(
      autofocus: false,
      controller: ClassController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        ClassController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe37b, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter your class(cs,ec,ee) ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );
    final Divison = TextFormField(
      autofocus: false,
      controller: DivisionController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        DivisionController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(IconData(0xe37b, fontFamily: 'MaterialIcons')),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter your division(A,B,C,D,E,F,G) ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final passfield = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$');
        if (value!.isEmpty) {
          return ("Please Enter Password");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password (Min. 6 Character)");
        }
        return null;
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )),
    );

    final NextButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(40),
      color: Color.fromARGB(255, 252, 69, 104),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signUser(
            email: UIDNameEditingController.text,
            password: passwordEditingController.text,
          );
        },
        child: Container(
            child: Text(
          "Next",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );

    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 252, 69, 104),
          body: Center(
            child: SingleChildScrollView(
                child: Container(
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.all(36.0),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 30),
                          Text(
                            "REGISTRATION FORM",
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 69, 104),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 25),
                          photofield,
                          SizedBox(height: 5),
                          firstfield,
                          SizedBox(height: 5),
                          secfield,
                          SizedBox(height: 5),
                          UIDfield,
                          SizedBox(height: 5),
                          phonefield,
                          SizedBox(height: 5),
                          passfield,
                          SizedBox(height: 5),
                          skillfield,
                          SizedBox(height: 5),
                          linkedin,
                          SizedBox(height: 5),
                          github,
                          SizedBox(height: 5),
                          Class,
                          SizedBox(height: 5),
                          Divison,
                          SizedBox(height: 5),
                          sem,
                          SizedBox(height: 40),
                          NextButton,
                        ],
                      ))),
            )),
          )),
    );
  }

  Future<String> signUser({
    required String email,
    required String password,
  }) async {
    setState(() {
      isLoading = true;
    });
    String role = "user";
    String res = "Some error occured";
    try {
      if (_formKey.currentState!.validate()) {
        setState(() {
          isLoading = true;
        });
        // else if(email.isNotEmpty || password.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(cred.user!.uid);

        model.UserModel userModel = model.UserModel(
            uid: cred.user!.uid,
            email: email,
            firstName: firstNameEditingController.text,
            secondName: SecondNameEditingController.text,
            phone: phoneController.text,
            sem: semController.text,
            Class: ClassController.text,
            Division: DivisionController.text,
            github: githubController.text,
            linkedin: linkedinController.text,
            PhotoUrl: photoNameEditingController.text,
            role: role,
            skill: SkillController.text);

        await _firestore
            .collection("student")
            .doc(cred.user!.uid)
            .set(userModel.toJson());
        setState(() {
          isLoading = false;
        });

        Fluttertoast.showToast(msg: "Account created Successfully");
        Navigator.pushAndRemoveUntil(
            (context),
            MaterialPageRoute(builder: (context) => HomeScreen2()),
            (route) => false);
      } else {
        res = "Please enter all the fields";
        Fluttertoast.showToast(msg: "Please enter all the fields");
      }
    } catch (err) {
      res = err.toString();
      setState(() {
        isLoading = false;
      });
    }

    return res;
  }
}
