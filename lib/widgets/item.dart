import 'package:flutter/material.dart';
import 'package:flutter_shop_app/screens/product.dart';
import 'package:flutter_shop_app/screens/products.dart';
import 'package:flutter_shop_app/utils/food.dart';
import 'package:flutter_shop_app/utils/grocery/grocery.dart';
import '../utils/colors.dart';
class Item extends StatefulWidget {
  final GroceryItem groceryItem;
  final int index;
  
  const Item({key: Key,this.groceryItem, this.index});

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.of(context)
            .push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
          return Product(groceryItem: widget.groceryItem,);
        }));
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
                              widget.groceryItem.itemPic,
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