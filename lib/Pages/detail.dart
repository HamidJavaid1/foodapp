import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/Pages/home.dart';
import 'package:foodapp/Widget_support/textstyle.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/salad2.png",
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediterranean",
                      style: Appwidget.semiBoldStyle(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ChickenPea Salad",
                      style: Appwidget.BoldStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  a.toString(),
                  style: Appwidget.BoldStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.",
              style: Appwidget.lighttextStyle(),
              maxLines: 4,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Dilevery Time",
                  style: Appwidget.BoldStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "30 min",
                  style: Appwidget.semiBoldStyle(),
                ),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                children: [
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Total Price",
                                style: Appwidget.BoldStyle(),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "\$25",
                                style: Appwidget.BoldStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
