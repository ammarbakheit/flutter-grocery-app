import 'package:flutter/material.dart';
import '../utils/colors.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            color: blueColor,
          ),
        ),
        Align(
          alignment: Alignment(0, -0.7),
          child: Container(
            width: 35,
            height: 110,
            color: blueColor,
          ),
        )
      ],
    );
  }
}
