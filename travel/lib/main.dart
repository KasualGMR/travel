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
        body: SafeArea(
          child: Container(
            child: Center(child: Text("Hello world")),
          ),
        ),
      ),
    );
  }
}
