import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel/widgets/elevated_button_row.dart';

class LoginOptionScreen extends StatefulWidget {
  LoginOptionScreen({Key key}) : super(key: key);

  @override
  _LoginOptionScreenState createState() => _LoginOptionScreenState();
}

class _LoginOptionScreenState extends State<LoginOptionScreen> {
  final List<String> imgPath = [
    "assets/images/login_bg.jpg",
    "assets/images/login2_bg.jpg",
    "assets/images/login3_bg.jpg",
    "assets/images/login4_bg.jpg",
  ];
  int imgIndex = 0;
  Timer timer;
  @override
  void initState() {
    //! using timer for slideshow effect
    timer = Timer.periodic(Duration(seconds: 2), (tick) {
      setState(() {
        imgIndex != 3 ? imgIndex++ : imgIndex = 0;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                imgPath[imgIndex],
                fit: BoxFit.cover,
                gaplessPlayback: true,
              ),
            ),
            //! this is for gradiant effect on the background image
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(0, 0, 0, 0.0),
                  const Color.fromRGBO(0, 0, 0, 0.7),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 130,
              child: Text(
                "Travel",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Positioned(
              bottom: 50,
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.75, // 75% of screen size to hold elevated button row widget
                child: elevatedButtonRow(context: context),
              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shadowColor: Colors.white,
                  onPrimary: Colors.white, //! ripple effect colors
                  primary: Colors.black, //*background color
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text("Sign-up",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
