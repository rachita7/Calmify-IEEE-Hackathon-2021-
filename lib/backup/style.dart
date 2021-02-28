import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(),
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
        button: TextStyle(),
      ).apply(
        bodyColor: Color.fromRGBO(255, 229, 244, 1),
      ),
      //2
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.deepPurple,
      fontFamily: 'Poppins', //3
      buttonTheme: ButtonThemeData(
        // 4
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.deepOrange,
      ),
    );
  }
}