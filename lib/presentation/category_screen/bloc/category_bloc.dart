import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fooditemsection_item_model.dart';
import 'package:lonavala_s_biryani/presentation/category_screen/models/category_model.dart';
part 'category_event.dart';
part 'category_state.dart';

/// A bloc that manages the state of a Category according to the event that is dispatched to it.
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(CategoryState initialState) : super(initialState) {
    on<CategoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryInitialEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(
        categoryModelObj: state.categoryModelObj?.copyWith(
            fooditemsectionItemList: fillFooditemsectionItemList())));
  }

  List<FooditemsectionItemModel> fillFooditemsectionItemList() {
    return [
      FooditemsectionItemModel(
          price: ImageConstant.imgImage80,
          ratingText: "4.5",
          ratingPlusText: "(25+)",
          name: "Chicken Hawaiian",
          description: "Chicken, Cheese and pineapple"),
      FooditemsectionItemModel(
          price: ImageConstant.imgImage82,
          ratingText: "4.5",
          ratingPlusText: "(25+)",
          name: "Chicken Hawaiian",
          description: "Chicken, Cheese and pineapple"),
      FooditemsectionItemModel(
          price: ImageConstant.imgImage80,
          ratingText: "4.5",
          ratingPlusText: "(25+)",
          name: "Chicken Hawaiian",
          description: "Chicken, Cheese and pineapple")
    ];
  }
}
