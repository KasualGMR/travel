import 'package:flutter/material.dart';
import 'package:travel/screens/login_option_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
