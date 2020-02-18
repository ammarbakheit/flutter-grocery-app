import 'package:flutter/material.dart';
import 'package:flutter_shop_app/data/repositories/item_repository.dart';
import 'package:flutter_shop_app/screens/cart.dart';
import 'package:flutter_shop_app/screens/home_page.dart';
import 'package:flutter_shop_app/screens/mainScreens/intro_screen.dart';
import 'package:flutter_shop_app/screens/mainScreens/main_page.dart';
import 'package:flutter_shop_app/screens/mainScreens/splash_screen.dart';

import 'package:flutter_shop_app/screens/product.dart';
import 'package:flutter_shop_app/screens/products.dart';
import 'package:flutter_shop_app/widgets/sidebar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      initialRoute: "/",
      routes: <String, WidgetBuilder> {
        "/": (BuildContext context) => SplashScreenWidget(),
        "/main": (BuildContext context) => MainPage(),
        "/product": (BuildContext context) => Product(),
        "/cart": (BuildContext context) => Cart(),
        "/sidebar": (BuildContext context) => SideBar(),
      },
    );
  }
}
