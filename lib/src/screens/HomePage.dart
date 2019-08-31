import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/buttons.dart';

import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './SignInPage.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;

  HomePage({Key key, this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/welcome.png', width: 190, height: 190),
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 0),
            child: Text('Fryo!', style: logoStyle),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(bottom: 0),
            child: froyoFlatBtn('Sign In', (){ 

              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: SignInPage()));
            }),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.all(0),
            child: froyoOutlineBtn('Sign Up', (){
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: SignUpPage()));
              // Navigator.of(context).pushReplacementNamed('/signup');
             }),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Text('Langauage:', style: TextStyle(color: darkText)),
                Container(
                  margin: EdgeInsets.only(left: 6),
                  child: Text('English ›', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      )),
      backgroundColor: bgColor,
    );
  }
}
