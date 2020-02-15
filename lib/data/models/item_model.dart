import 'package:flutter/cupertino.dart';
import 'package:flutter_shop_app/widgets/item.dart';

class ItemModel extends Item {
  final String itemName;
  final String itemDescription;
  final int itemPrice;
  final int itemCuantity;
  ItemModel({
    @required  this.itemName,
      @required  this.itemDescription,

      @required this.itemPrice, 
   @required this.itemCuantity
  });
}