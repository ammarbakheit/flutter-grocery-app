import 'package:flutter/material.dart';
import '../utils/colors.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final bool _isopened = false;

  @override
  Widget build(BuildContext context) {
    final screanWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blueColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              color: blueColor,
            ),
          ),
          Expanded(
            child: Container(
              color: greenColor,
            ),
          ),
          Expanded(
            child: Container(
              color: grayColor,
            ),
          ),
        ],
      ),
    );
  }
}
