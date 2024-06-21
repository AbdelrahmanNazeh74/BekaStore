import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/items_response.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  Map<ItemResponse, bool> selectedItems = {};
  HomeBloc() : super(HomeInitialState()) {
    on<HomeEvent>((event, emit) async {
      if (event is AddItemToListEvent) {
       addItemToList(event, emit);
      } else if (event is RemoveItemFromList){
       removeItemFromList(event,emit);
      }
    });
  }
  void addItemToList(
      AddItemToListEvent event, Emitter<HomeState> emit) {
    final currentState = state as HomeLoadedState;
    currentState.savedItems?.add(event.item);
    emit(HomeLoadedState(currentState.savedItems));
  }
  void removeItemFromList(
      RemoveItemFromList event, Emitter<HomeState> emit) {
    final currentState = state as HomeLoadedState;
    currentState.savedItems?.remove(event.item);
    emit(HomeLoadedState(currentState.savedItems));
  }

  }