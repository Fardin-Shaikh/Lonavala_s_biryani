import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/favorites_food_items_tab_container_screen/models/favorites_food_items_tab_container_model.dart';
part 'favorites_food_items_tab_container_event.dart';
part 'favorites_food_items_tab_container_state.dart';

/// A bloc that manages the state of a FavoritesFoodItemsTabContainer according to the event that is dispatched to it.
class FavoritesFoodItemsTabContainerBloc extends Bloc<
    FavoritesFoodItemsTabContainerEvent, FavoritesFoodItemsTabContainerState> {
  FavoritesFoodItemsTabContainerBloc(
      FavoritesFoodItemsTabContainerState initialState)
      : super(initialState) {
    on<FavoritesFoodItemsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoritesFoodItemsTabContainerInitialEvent event,
    Emitter<FavoritesFoodItemsTabContainerState> emit,
  ) async {}
}
