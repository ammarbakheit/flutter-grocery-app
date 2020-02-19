import 'package:equatable/equatable.dart';
import 'package:flutter_shop_app/data/models/item_model.dart';

class ItemRepository extends Equatable {

  Future<ItemModel> getItems() async {
    Future.delayed(Duration(seconds: 3));

    return  ItemModel(
      itemName: "Fishes",
      itemDescription: "Fish meat in a good condition",
      itemPrice: 400,
      itemCuantity: 1
    );
  }
}