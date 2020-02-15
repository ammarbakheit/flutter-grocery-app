import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Item extends Equatable {
  final String itemName;
  final String itemDescription;
  final int itemPrice;
  final int itemCuantity;

  Item({
    @required this.itemName, 
   @required this.itemDescription, 
   @required this.itemPrice, 
   @required this.itemCuantity}) : super([itemName, itemDescription, itemPrice, itemCuantity]);

}