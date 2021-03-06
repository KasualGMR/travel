import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "travel app",
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                "https://i.pinimg.com/originals/76/a3/8e/76a38e81cf24cf662a259bf1aaf5627c.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(0, 0, 0, 0.0),
                  const Color.fromRGBO(0, 0, 0, 0.9),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
            Positioned(
              bottom: 50,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("assets/icons/google.png"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("assets/icons/twitter.png"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("assets/icons/anonymous.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
