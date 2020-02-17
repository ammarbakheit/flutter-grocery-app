import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/colors.dart';
import 'package:flutter_shop_app/utils/food.dart';

class ItemScreen extends StatefulWidget {
  final FoodItems foodItems;
  final int index;
  const ItemScreen({Key key, this.foodItems, this.index}) : super(key: key);
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int _counter;

  @override
  void initState() {
    _counter = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: blueColor),
      ),
      body: Center(
        child: Container(
          child: Hero(
            transitionOnUserGestures: true,
            tag: widget.foodItems.itemPic,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset(
                            widget.foodItems.itemPic,
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(widget.foodItems.itemName,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: blueColor,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                    widget.foodItems.itemPrice.toString(),
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 40,
                              color: blueColor,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(widget.foodItems.itemDescription)
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _counter--;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blueColor,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: grayColor, width: 1.0)),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Text(
                            // foodItems.itemCuantity.toString(),
                            _counter.toString(),
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _counter++;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_up,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/cart");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 90),
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "Add to Card",
                              style: TextStyle(color: whiteColor, fontSize: 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
