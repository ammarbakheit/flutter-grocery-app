import 'dart:async';

import 'package:flutter_shop_app/data/bloc/item/bloc.dart';
import 'package:flutter_shop_app/data/repositories/item_repository.dart';

class ItemBloc {
  ItemRepository _itemRepository;
  ItemBloc(this._itemRepository);

  final _itemStreamController = StreamController<ItemState>();

  Stream<ItemState> get item => _itemStreamController.stream;

  void loadItemState() {
    // _itemStreamController.sink.add(ItemInialState());
    _itemStreamController.sink.add(ItemState.itemLoadingState());
    _itemRepository.getItems().then((item) {
      _itemStreamController.sink.add(ItemState.itemDataState(item));
    }); 
  }

  void dispose() {
    _itemStreamController.close();
  }
}