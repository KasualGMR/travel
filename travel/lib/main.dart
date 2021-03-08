import 'package:flutter/material.dart';
import 'package:travel/screens/login_option_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //* defining theme for -
    //* 1. Text Widget
    theme: ThemeData(
      //* overall color scheme
      accentColor: Colors.amber,
      primaryColor: Colors.white,
      textTheme: TextTheme(
        bodyText1: TextStyle(
            fontFamily: "Pacifico", fontSize: 20, color: Colors.white),
        headline1: TextStyle(
            fontFamily: "Pacifico", color: Colors.white, fontSize: 70),
      ),
    ),
    title: "Travel",
    home: LoginOptionScreen(),
  ));
}
