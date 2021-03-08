import 'package:flutter/material.dart';

Widget elevatedButtonRow({@required context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.17,
        height: MediaQuery.of(context).size.height * 0.08,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black, //! ripple effect colors on the button
            primary: Theme.of(context).primaryColor, //*background color
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          onPressed: () {},
          child: Image.asset("assets/icons/google.png"),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.17,
        height: MediaQuery.of(context).size.height * 0.08,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black, //! ripple effect colors on the button
            primary: Theme.of(context).primaryColor, //*background color
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          onPressed: () {},
          child: Image.asset("assets/icons/twitter.png"),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.17,
        height: MediaQuery.of(context).size.height * 0.08,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black, //! ripple effect colors on the button
            primary: Theme.of(context).primaryColor, //*background color
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          onPressed: () {
            print(MediaQuery.of(context).size.height);
          },
          child: Image.asset("assets/icons/anonymous.png"),
        ),
      ),
    ],
  );
}
