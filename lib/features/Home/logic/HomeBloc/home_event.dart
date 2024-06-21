import 'package:beka_store/features/Home/data/items_response.dart';

sealed class HomeEvent{}

class AddItemToListEvent extends HomeEvent{
  final ItemResponse item;
  AddItemToListEvent(this.item);
}

class RemoveItemFromList extends HomeEvent{
  final ItemResponse item;
  RemoveItemFromList(this.item);
}
