import 'package:beka_store/features/Home/data/items_response.dart';

sealed class HomeState{
}
class HomeInitialState extends HomeState{
}
class HomeLoadingState extends HomeState{

}
class HomeLoadedState extends HomeState{
  List<ItemResponse?>? savedItems;
  HomeLoadedState(this.savedItems);
}
class HomeFailureState extends HomeState{
}