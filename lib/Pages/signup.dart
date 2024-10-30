import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/Pages/bottomnavbar.dart';
import 'package:foodapp/Pages/login.dart';
import 'package:foodapp/Widget_support/textstyle.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "", password = "", name = "";

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController eamilcontroller = new TextEditingController();
  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null) {
      try {
        UserCredential usercredentiol = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text("Registered Succesfully",
                style: TextStyle(fontSize: 20)))));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNav()));
      } on FirebaseException catch (e) {
        if (e.code == 'weak_password') {
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text("Password is too weak",
                  style: TextStyle(fontSize: 18)))));
        } else if (e.code == 'email_already_in_use') {
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text("Account Already exists",
                  style: TextStyle(fontSize: 18)))));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 2.5,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a),
                    ])),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height / 3),
                    height: MediaQuery.sizeOf(context).height / 3,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60, right: 20, left: 20),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                              child: Image.asset(
                            "images/logo.png",
                            width: MediaQuery.sizeOf(context).width / 2,
                          )),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height / 1.9,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Signup",
                                    style: Appwidget.BoldStyle(),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: namecontroller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "username",
                                        hintStyle: Appwidget.semiBoldStyle(),
                                        prefixIcon:
                                            Icon(Icons.person_outlined)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: eamilcontroller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: Appwidget.semiBoldStyle(),
                                        prefixIcon: Icon(Icons.email)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: passwordcontroller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter your password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: Appwidget.semiBoldStyle(),
                                        prefixIcon: Icon(Icons.password)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      if (_formkey.currentState!.validate()) {
                                        setState(() {
                                          email = eamilcontroller.text;
                                          password = passwordcontroller.text;
                                          name = namecontroller.text;
                                        });
                                      }
                                      registration();
                                    },
                                    child: Material(
                                      elevation: 10,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                1.5,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFe74b1a),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            "Signup",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login())),
                          child: Text(
                            "Already Have an account? login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
