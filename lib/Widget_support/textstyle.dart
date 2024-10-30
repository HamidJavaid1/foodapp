import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle BoldStyle() {
    return TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  }

  static TextStyle HeadBoldStyle() {
    return TextStyle(
        fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  }

  static TextStyle lighttextStyle() {
    return TextStyle(
        fontSize: 16,
        color: Colors.black38,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins');
  }

  static TextStyle semiBoldStyle() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  }
}
