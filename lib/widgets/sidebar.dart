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
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: blueColor),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(55)
                    ),
                    child: Text("A", style: TextStyle(
                      color: whiteColor,
                      fontSize: 40
                    ),),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    child: Text("Ammar Bakheit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                )
              ],
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: whiteColor,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("Account"),
                    trailing: Icon(Icons.account_circle, color: blueColor,),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Settings"),
                    trailing: Icon(Icons.settings, color: blueColor,),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("close"),
                    trailing: Icon(Icons.close, color: blueColor,),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
