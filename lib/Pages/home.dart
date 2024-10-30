import 'package:flutter/material.dart';
import 'package:foodapp/Pages/detail.dart';
import 'package:foodapp/Widget_support/textstyle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, salad = false, burger = false, pizza = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, right: 10, left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi, Hamid", style: Appwidget.BoldStyle()),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Text("Delicious Food", style: Appwidget.HeadBoldStyle()),
              Text("Enjoy and Get Delicious food ",
                  style: Appwidget.lighttextStyle()),
              SizedBox(
                height: 20,
              ),
              showitem(),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => detailpage()));
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(18),
                              child: Image.asset(
                                "images/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: Appwidget.semiBoldStyle(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fresh And Healthy",
                              style: Appwidget.lighttextStyle(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$25",
                              style: Appwidget.semiBoldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Veggie Taco Hash",
                            style: Appwidget.semiBoldStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fresh And Healthy",
                            style: Appwidget.lighttextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldStyle(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Veggie Taco Hash",
                            style: Appwidget.semiBoldStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fresh And Healthy",
                            style: Appwidget.lighttextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldStyle(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Veggie Taco Hash",
                            style: Appwidget.semiBoldStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fresh And Healthy",
                            style: Appwidget.lighttextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldStyle(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Veggie Taco Hash",
                            style: Appwidget.semiBoldStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fresh And Healthy",
                            style: Appwidget.lighttextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldStyle(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            child: Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Veggie Taco Hash",
                            style: Appwidget.semiBoldStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fresh And Healthy",
                            style: Appwidget.lighttextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              "Mediterranean Chickenpea Salad",
                              style: Appwidget.semiBoldStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              "Honey goot cheese",
                              style: Appwidget.lighttextStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              "\$27",
                              style: Appwidget.semiBoldStyle(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              "Mediterranean Chickenpea Salad",
                              style: Appwidget.semiBoldStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              "Honey goot cheese",
                              style: Appwidget.lighttextStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              "\$27",
                              style: Appwidget.semiBoldStyle(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showitem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            salad = false;
            pizza = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(12),
              child: Image.asset("images/ice-cream.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: icecream ? Colors.white : Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            salad = false;
            pizza = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(12),
              child: Image.asset("images/burger.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: burger ? Colors.white : Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            salad = false;
            pizza = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(12),
              child: Image.asset("images/pizza.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: pizza ? Colors.white : Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            salad = true;
            pizza = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(12),
              child: Image.asset("images/salad.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: salad ? Colors.white : Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
