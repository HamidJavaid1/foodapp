import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/Pages/signup.dart';
import 'package:foodapp/Widget_support/contentmodel.dart';
import 'package:foodapp/Widget_support/textstyle.dart';

class onboard extends StatefulWidget {
  const onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {
  int currentindex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: content.length,
                onPageChanged: (int index) {
                  currentindex = index;
                  setState(() {});
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(content[i].image,
                            height: 350,
                            width: MediaQuery.sizeOf(context).width,
                            fit: BoxFit.fill),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          content[i].tittle,
                          style: Appwidget.BoldStyle(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          content[i].Description,
                          style: Appwidget.lighttextStyle(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(content.length,
                                  (index) => buildDot(index, context))),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          GestureDetector(
            onTap: () {
              if (currentindex == content.length - 1) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              height: 50,
              padding: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              child: Center(
                child: Text(
                  currentindex == content.length - 1 ? "Start" : "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentindex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }
}
