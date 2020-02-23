import 'package:equatable/equatable.dart';

class Grocery extends Equatable {
   final String itemName;
  final String itemPic;
  final String itemDescription;
  final int itemPrice;
  final int itemCuantity;

  Grocery({this.itemName, this.itemPic, this.itemDescription, this.itemPrice, this.itemCuantity});
}