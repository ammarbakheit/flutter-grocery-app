import 'package:flutter/material.dart';
import 'package:flutter_shop_app/data/repositories/item_repository.dart';
import 'package:flutter_shop_app/screens/home_page.dart';
import 'package:flutter_shop_app/screens/intro_screen.dart';
import 'package:flutter_shop_app/screens/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      initialRoute: "/intro",
      routes: <String, WidgetBuilder> {
        "/intro": (BuildContext context) => IntroScreen(),
        "/": (BuildContext context) => HomePage(),
        "/products": (BuildContext context) => Products(),
      },
    );
  }
}
