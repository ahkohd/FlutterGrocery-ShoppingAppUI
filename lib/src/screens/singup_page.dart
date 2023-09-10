import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import './signin_page.dart';
import './dashboard.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: Text('Sign Up',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signin');
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    alignment: Alignment.center,
                    type: PageTransitionType.rightToLeft,
                    child: SignInPage(),
                  ),
                );
              },
              child: Text('Sign In', style: contrastText),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              height: 360,
              width: double.infinity,
              decoration: authPlateDecoration,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome to Fryo!', style: h3),
                      Text('Let\'s get started', style: taglineText),
                      fryoTextInput('Username'),
                      fryoTextInput('Full Name'),
                      fryoEmailInput('Email Address'),
                      fryoPasswordInput('Password')
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    right: -15,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            alignment: Alignment.center,
                            type: PageTransitionType.rightToLeft,
                            child: Dashboard(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.all(13),
                        shape: CircleBorder(),
                      ),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
