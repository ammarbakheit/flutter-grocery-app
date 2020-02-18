import 'package:equatable/equatable.dart';

class GroceryItem extends Equatable {
  final String itemName;
  final String itemPic;
  final String itemDescription;
  final int itemPrice;
  final int itemCuantity;

  GroceryItem(
      {this.itemName,
      this.itemPic,
      this.itemDescription,
      this.itemPrice,
      this.itemCuantity});
}

List<GroceryItem> groceries = [
  GroceryItem(
      itemName: "Botato",
      itemPic: "assets/food.png",
      itemDescription: "Fresh Botato",
      itemPrice: 300,
      itemCuantity: 1),
  GroceryItem(
      itemName: "Tomato",
      itemPic: "assets/fruit.png",
      itemDescription: "Fresh Tomato",
      itemPrice: 200,
      itemCuantity: 1),
  GroceryItem(
      itemName: "Pinapple",
      itemPic: "assets/burger.png",
      itemDescription: "Fresh Pinapple",
      itemPrice: 100,
      itemCuantity: 1),
  GroceryItem(
      itemName: "banana",
      itemPic: "assets/pizza.png",
      itemDescription: "Fresh banana",
      itemPrice: 400,
      itemCuantity: 1),
];