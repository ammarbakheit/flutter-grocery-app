import 'package:flutter/material.dart';
import '../utils/food.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Hero(
             tag: "assets/meat.png",
            child: Icon(
              Icons.add,
              size: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}
