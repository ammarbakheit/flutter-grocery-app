import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Container(
        child: Text("Product"),
      ),
          ),
    );
  }
}