import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 22.0,
        fontWeight: FontWeight.w600);
  }

  static TextStyle HeadLineTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: 27.0,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle LightTextFieldStyle() {
    return TextStyle(
      color: Colors.black38,
      fontFamily: 'Poppins',
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBoldTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    );
  }
}
