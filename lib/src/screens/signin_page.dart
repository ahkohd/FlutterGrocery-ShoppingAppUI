import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import './singup_page.dart';
import './dashboard.dart';

class SignInPage extends StatefulWidget {
  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: Text('Sign In',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signup');
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    alignment: Alignment.center,
                    type: PageTransitionType.rightToLeft,
                    child: SignUpPage(),
                  ),
                );
              },
              child: Text('Sign Up', style: contrastText),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              height: 245,
              width: double.infinity,
              decoration: authPlateDecoration,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome Back!', style: h3),
                      Text('Howdy, let\'s authenticate', style: taglineText),
                      fryoTextInput('Username'),
                      fryoPasswordInput('Password'),
                      TextButton(
                        onPressed: () {},
                        child:
                            Text('Forgot Password?', style: contrastTextBold),
                      )
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
                        backgroundColor: primaryColor, // Button color
                        padding: EdgeInsets.all(13),
                        shape: CircleBorder(),
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
