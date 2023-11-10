import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fooditem_item_model.dart';
import 'package:lonavala_s_biryani/presentation/favorites_food_items_page/models/favorites_food_items_model.dart';
part 'favorites_food_items_event.dart';
part 'favorites_food_items_state.dart';

/// A bloc that manages the state of a FavoritesFoodItems according to the event that is dispatched to it.
class FavoritesFoodItemsBloc
    extends Bloc<FavoritesFoodItemsEvent, FavoritesFoodItemsState> {
  FavoritesFoodItemsBloc(FavoritesFoodItemsState initialState)
      : super(initialState) {
    on<FavoritesFoodItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoritesFoodItemsInitialEvent event,
    Emitter<FavoritesFoodItemsState> emit,
  ) async {
    emit(state.copyWith(
        favoritesFoodItemsModelObj: state.favoritesFoodItemsModelObj?.copyWith(
      fooditemItemList: fillFooditemItemList(),
    )));
  }

  List<FooditemItemModel> fillFooditemItemList() {
    return [
      FooditemItemModel(
          price: ImageConstant.imgImage80165x323,
          fortyFive: "4.5",
          twentyFive: "(25+)",
          name: "Chicken Hawaiian",
          description: "Chicken, Cheese and pineapple"),
      FooditemItemModel(
          price: ImageConstant.imgImage82165x323,
          name: "Red N Hot Pizza",
          description: "Chicken, Chili"),
      FooditemItemModel(
          price: ImageConstant.imgImage4,
          name: "Chicken Hawaiian",
          description: "Chicken, Cheese and pineapple")
    ];
  }
}
