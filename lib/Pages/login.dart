import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/Pages/bottomnavbar.dart';
import 'package:foodapp/Pages/signup.dart';
import 'package:foodapp/Widget_support/textstyle.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String email = "", password = "";
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  final _formkey = GlobalKey<FormState>();

  userlogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNav()));
    } on FirebaseException catch (e) {
      if (e.code == 'user_not_found') {
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            content: Text("No user FOund for that email",
                style: TextStyle(fontSize: 18, color: Colors.black)))));
      } else if (e.code == 'wrong_password') {
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            content: Text("Password is wrong",
                style: TextStyle(fontSize: 18, color: Colors.black)))));
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
                            height: MediaQuery.sizeOf(context).height / 2,
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
                                    "Login",
                                    style: Appwidget.BoldStyle(),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: emailcontroller,
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
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: Appwidget.semiBoldStyle(),
                                        prefixIcon: Icon(Icons.password)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "Forget password",
                                      style: Appwidget.semiBoldStyle(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (_formkey.currentState!.validate()) {
                                        setState(() {
                                          email = emailcontroller.text;
                                          password = passwordcontroller.text;
                                        });
                                      }
                                      userlogin();
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
                                            "Login",
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
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup())),
                          child: Text(
                            "Don't have an account? Signup",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        )
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
