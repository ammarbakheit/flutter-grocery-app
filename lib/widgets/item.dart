import 'package:flutter/material.dart';
import '../utils/colors.dart';
class Item extends StatelessWidget {
  final String title ;

  const Item({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/products",);
      },
          child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: grayColor,
                            offset: Offset(0, 2),
                            blurRadius: 10)
                        //  BoxShadow(color: Colors.transparent)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              "assets/food.png",
                              scale: 0.5,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "\$ 21",
                              style: TextStyle(fontSize: 24, color: blueColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 150,
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  "Add to cart",
                                  style: TextStyle(color: whiteColor,
                                  fontSize: 18),
                                )),
                              ),
                              decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}