
import 'package:flutter_shop_app/data/models/item_model.dart';

class ItemState {
  ItemState();
  factory ItemState.itemDataState(ItemModel item) = ItemDataState;
  factory ItemState.itemLoadingState() = ItemLoadingState;
}
class ItemInialState {}

class ItemDataState extends ItemState {
final ItemModel item;
ItemDataState(this.item);
}

class ItemLoadingState extends ItemState {

}