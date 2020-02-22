import 'package:flutter/material.dart';
import 'package:flutter_shop_app/screens/item_screen.dart';
import 'package:flutter_shop_app/utils/grocery/grocery.dart';
import 'package:flutter_shop_app/widgets/item.dart';
import '../utils/colors.dart';
import '../utils/food.dart';

class HomePage extends StatefulWidget {
  final String name;

  const HomePage({Key key, this.name}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedCategoryItem = 0;

  Widget _buildTopCards(int index, FoodItems foodItems) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategoryItem = index;
        });
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return ItemScreen(foodItems: foodItems, index: index);
        }));
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
                  Hero(
                    tag: foodItems.itemPic,
                    child: Image.asset(
                      foodItems.itemPic,
                      scale: 0.5,
                    ),
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
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: GestureDetector(
                    child: Icon(
                      Icons.menu,
                      color: blueColor,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("/sidebar");
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      "Grocery App",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: blueColor),
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  child: GestureDetector(
                    child: Icon(
                      Icons.shopping_cart,
                      color: blueColor,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("/cart");
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
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
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  // if (index == 0) {
                  //   return SizedBox(
                  //     width: 20.0,
                  //   );
                  // }
                  return _buildTopCards(
                    index,
                    categories.toList()[index],
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Groceries",
              style: TextStyle(
                  fontSize: 40, color: blueColor, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
                    child: GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      children: List.generate(groceries.length, (index) {
                        return Item(
                          groceryItem: groceries[index],
                          index: index,
                        );
                      }),
                    ),
          ),
        ],
      ),
    );
  }
}
