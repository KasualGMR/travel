import 'package:travel/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:travel/services/firebase_auth_social.dart';

Widget elevatedButtonRow({@required context}) {
  SocialAuthHelper helper = new SocialAuthHelper();
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
          onPressed: () {
            helper.signInWithGoogle().whenComplete(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            });
          },
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
          child: Image.asset("assets/icons/email.png"),
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
