import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/colors.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: blueColor),
        title: Icon(Icons.shopping_cart),
        centerTitle: true,
      ),
      body: Container(
        color: blueColor,
      ),
    );
  }
}