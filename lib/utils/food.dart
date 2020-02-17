import 'package:equatable/equatable.dart';

List<FoodItems> categories = [
  FoodItems(
      itemPic: "assets/meat.png",
      itemName: "meat",
      itemDescription: "Cows Meat",
      itemCuantity: 1,
      itemPrice: 370),
  FoodItems(
      itemPic: "assets/turkey.png",
      itemName: "Chicken",
      itemDescription: "Fresh Chicken",
      itemCuantity: 1,
      itemPrice: 270),
  FoodItems(
      itemPic: "assets/fish.png",
      itemName: "Fish",
      itemDescription: "Bolty",
      itemCuantity: 1,
      itemPrice: 200),
  FoodItems(
      itemPic: "assets/fruit.png",
      itemName: "fruit",
      itemDescription: "fruit",
      itemCuantity: 1,
      itemPrice: 200),
];

class FoodItems extends Equatable {
  final String itemName;
  final String itemPic;
  final String itemDescription;
  final int itemPrice;
  final int itemCuantity;

  FoodItems( 
      { this.itemPic,this.itemName, this.itemDescription, this.itemPrice, this.itemCuantity});
}
