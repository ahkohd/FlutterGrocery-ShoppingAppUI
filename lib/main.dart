import 'package:flutter/material.dart';
import 'src/screens/signin_page.dart';
import 'src/screens/singup_page.dart';
import 'src/screens/home_page.dart';
import 'src/screens/dashboard.dart';
import 'src/screens/product_page.dart';
import 'src/shared/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fryo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(pageTitle: 'Welcome'),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUpPage(),
        '/signin': (BuildContext context) => SignInPage(),
        '/dashboard': (BuildContext context) => Dashboard(),
        '/productPage': (BuildContext context) => ProductPage(
              productData: Product(),
            ),
      },
    );
  }
}
