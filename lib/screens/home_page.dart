import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/item.dart';
import '../utils/colors.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map categories = {
    1: "assets/meat.png",
    2: "assets/food.png",
    3: "assets/pizza.png",
    4: "assets/fruit.png",
    5: "assets/fish.png",
  };

  int _selectedCategoryItem = 0;

  Widget _buildTopCards(
    int index,
    String title,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategoryItem = index;
        });

        Navigator.of(context).pushNamed("/products");
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 200,
        width: 105,
        decoration: BoxDecoration(
            color: _selectedCategoryItem == index ? blueColor : whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              _selectedCategoryItem == index
                  ? BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 10)
                  : BoxShadow(color: Colors.transparent)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    title,
                    scale: 0.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: Icon(Icons.menu, color: blueColor,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Container(
                    child: Text(
                      "Grocery App",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold, color: blueColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(
                    width: 20.0,
                  );
                }

                return _buildTopCards(
                  index - 1,
                  categories.values.toList()[index - 1],
                );
              },
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Column(
            children: <Widget>[
              Item(),
                  Item(),
                  Item(),
                  Item(),
            ],
          )
        ],
      );
  }
}
