import 'package:flutter/material.dart';
import 'package:flutter_shop_app/screens/home_page.dart';
import 'package:flutter_shop_app/screens/sidebar.dart';
import '../utils/colors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body:  HomePage()
    );
  }
}
